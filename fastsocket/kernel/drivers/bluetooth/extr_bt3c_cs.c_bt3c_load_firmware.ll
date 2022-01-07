; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Bad address in firmware\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Checksum error in firmware\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @bt3c_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_load_firmware(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [9 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @bt3c_io_write(i32 %23, i32 32832, i32 1028)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @bt3c_io_write(i32 %25, i32 32832, i32 1024)
  %27 = call i32 @udelay(i32 1)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @bt3c_io_write(i32 %28, i32 32832, i32 1028)
  %30 = call i32 @udelay(i32 17)
  br label %31

31:                                               ; preds = %143, %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 83
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  br label %170

44:                                               ; preds = %34
  %45 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 0, i32 9)
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = call i32 @memcpy(i8* %47, i8* %49, i32 2)
  %51 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %52 = call i32 @simple_strtoul(i8* %51, i32* null, i32 16)
  store i32 %52, i32* %10, align 4
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 9)
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = call i32 @memcpy(i8* %55, i8* %57, i32 8)
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %60 = call i32 @simple_strtoul(i8* %59, i32* null, i32 16)
  store i32 %60, i32* %11, align 4
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %62 = call i32 @memset(i8* %61, i32 0, i32 9)
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = mul i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = call i32 @memcpy(i8* %63, i8* %69, i32 2)
  %71 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %72 = call i32 @simple_strtoul(i8* %71, i32* null, i32 16)
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %74 = call i32 @memset(i8* %73, i32 0, i32 9)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %94, %44
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = call i32 @memcpy(i8* %80, i8* %86, i32 2)
  %88 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %89 = call i64 @simple_strtol(i8* %88, i32* null, i32 16)
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add i32 %98, %99
  %101 = and i32 %100, 255
  %102 = icmp ne i32 %101, 255
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @EILSEQ, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %170

107:                                              ; preds = %97
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 51
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @bt3c_address(i32 %114, i32 %115)
  %117 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %118 = call i32 @memset(i8* %117, i32 0, i32 9)
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %139, %113
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub i32 %121, 4
  %123 = udiv i32 %122, 2
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %119
  %126 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %14, align 4
  %129 = mul nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = getelementptr inbounds i8, i8* %131, i64 12
  %133 = call i32 @memcpy(i8* %126, i8* %132, i32 4)
  %134 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %135 = call i32 @simple_strtoul(i8* %134, i32* null, i32 16)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @bt3c_put(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %119

142:                                              ; preds = %119
  br label %143

143:                                              ; preds = %142, %107
  %144 = load i32, i32* %10, align 4
  %145 = mul i32 %144, 2
  %146 = add i32 %145, 6
  %147 = load i8*, i8** %7, align 8
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %7, align 8
  %150 = load i32, i32* %10, align 4
  %151 = mul i32 %150, 2
  %152 = add i32 %151, 6
  %153 = load i32, i32* %6, align 4
  %154 = sub i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %31

155:                                              ; preds = %31
  %156 = call i32 @udelay(i32 17)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @bt3c_address(i32 %157, i32 12288)
  %159 = load i32, i32* %9, align 4
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* @CONTROL, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @inb(i64 %162)
  %164 = or i32 %163, 64
  %165 = load i32, i32* %9, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* @CONTROL, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @outb(i32 %164, i64 %168)
  br label %170

170:                                              ; preds = %155, %103, %40
  %171 = call i32 @udelay(i32 17)
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @bt3c_io_write(i32 %172, i32 28678, i32 0)
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @bt3c_io_write(i32 %174, i32 28677, i32 0)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @bt3c_io_write(i32 %176, i32 28673, i32 0)
  %178 = load i32, i32* %15, align 4
  ret i32 %178
}

declare dso_local i32 @bt3c_io_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @bt3c_address(i32, i32) #1

declare dso_local i32 @bt3c_put(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
