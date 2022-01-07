; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_zol_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_zol_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoltrix = type { i32, i64, i32, i64, i32, i64, %struct.v4l2_device }
%struct.v4l2_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"cannot set a frequency of 0.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zoltrix*, i64)* @zol_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zol_setfreq(%struct.zoltrix* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zoltrix*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zoltrix* %0, %struct.zoltrix** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %13 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %12, i32 0, i32 6
  store %struct.v4l2_device* %13, %struct.v4l2_device** %6, align 8
  %14 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %15 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %21 = call i32 @v4l2_warn(%struct.v4l2_device* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %168

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %25, 160
  %27 = sub i64 %26, 8800
  %28 = mul i64 %27, 2
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 19740
  store i64 %30, i64* %8, align 8
  store i64 -4287356287265013760, i64* %7, align 8
  store i32 45, i32* %11, align 4
  %31 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %32 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %31, i32 0, i32 4
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %36 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %38 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @outb(i32 0, i64 %39)
  %41 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %42 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @outb(i32 0, i64 %43)
  %45 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %46 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 3
  %49 = call i32 @inb(i64 %48)
  %50 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %51 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @outb(i32 64, i64 %52)
  %54 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %55 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @outb(i32 192, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = and i64 %59, 255
  %61 = shl i64 %60, 47
  %62 = xor i64 %58, %61
  %63 = load i64, i64* %8, align 8
  %64 = and i64 %63, 65280
  %65 = shl i64 %64, 30
  %66 = xor i64 %62, %65
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 31
  %69 = zext i32 %68 to i64
  %70 = xor i64 %66, %69
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %111, %24
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %11, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %76, -9223372036854775808
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %81 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @outb(i32 128, i64 %82)
  %84 = call i32 @udelay(i32 50)
  %85 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %86 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @outb(i32 0, i64 %87)
  %89 = call i32 @udelay(i32 50)
  %90 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %91 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @outb(i32 128, i64 %92)
  %94 = call i32 @udelay(i32 50)
  br label %111

95:                                               ; preds = %75
  %96 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %97 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @outb(i32 192, i64 %98)
  %100 = call i32 @udelay(i32 50)
  %101 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %102 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @outb(i32 64, i64 %103)
  %105 = call i32 @udelay(i32 50)
  %106 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %107 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @outb(i32 192, i64 %108)
  %110 = call i32 @udelay(i32 50)
  br label %111

111:                                              ; preds = %95, %79
  %112 = load i64, i64* %7, align 8
  %113 = mul i64 %112, 2
  store i64 %113, i64* %7, align 8
  br label %71

114:                                              ; preds = %71
  %115 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %116 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @outb(i32 128, i64 %117)
  %119 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %120 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @outb(i32 192, i64 %121)
  %123 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %124 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @outb(i32 64, i64 %125)
  %127 = call i32 @udelay(i32 1000)
  %128 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %129 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 2
  %132 = call i32 @inb(i64 %131)
  %133 = call i32 @udelay(i32 1000)
  %134 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %135 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %114
  %139 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %140 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @outb(i32 0, i64 %141)
  %143 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %144 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @outb(i32 0, i64 %145)
  %147 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %148 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 3
  %151 = call i32 @inb(i64 %150)
  %152 = call i32 @udelay(i32 1000)
  br label %153

153:                                              ; preds = %138, %114
  %154 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %155 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %154, i32 0, i32 4
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %158 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %163 = load %struct.zoltrix*, %struct.zoltrix** %4, align 8
  %164 = getelementptr inbounds %struct.zoltrix, %struct.zoltrix* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @zol_setvol(%struct.zoltrix* %162, i32 %165)
  br label %167

167:                                              ; preds = %161, %153
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %19
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @v4l2_warn(%struct.v4l2_device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @zol_setvol(%struct.zoltrix*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
