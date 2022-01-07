; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_isoc_vbi_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_isoc_vbi_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.urb = type { i8*, i64, i32, %struct.cx231xx_dmaqueue* }
%struct.cx231xx_dmaqueue = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_isoc_vbi_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_isoc_vbi_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_buffer*, align 8
  %7 = alloca %struct.cx231xx_dmaqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 3
  %16 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %15, align 8
  store %struct.cx231xx_dmaqueue* %16, %struct.cx231xx_dmaqueue** %7, align 8
  store i32 1, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %18 = icmp ne %struct.cx231xx* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %152

20:                                               ; preds = %2
  %21 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DEV_DISCONNECTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  store i32 0, i32* %3, align 4
  br label %152

35:                                               ; preds = %27
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @print_err_status(%struct.cx231xx* %41, i32 -1, i32 %44)
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %152

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %58, align 8
  store %struct.cx231xx_buffer* %59, %struct.cx231xx_buffer** %6, align 8
  %60 = load %struct.urb*, %struct.urb** %5, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %150

68:                                               ; preds = %54
  store i64 0, i64* %10, align 8
  %69 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %70 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %75 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %12, align 4
  br label %83

77:                                               ; preds = %68
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %80 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cx231xx_find_boundary_SAV_EAV(i8* %78, i32 %81, i64* %10)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 240
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %90 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i64 @cx231xx_get_vbi_line(%struct.cx231xx* %89, %struct.cx231xx_dmaqueue* %90, i32 %91, i8* %94, i64 %97)
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %88, %83
  %102 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %103 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %140, %101
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %104
  store i64 0, i64* %13, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %10, align 8
  %114 = sub nsw i64 %112, %113
  %115 = call i32 @cx231xx_find_next_SAV_EAV(i8* %111, i64 %114, i64* %13)
  store i32 %115, i32* %12, align 4
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 240
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %108
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %129 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %10, align 8
  %136 = sub nsw i64 %134, %135
  %137 = call i64 @cx231xx_get_vbi_line(%struct.cx231xx* %128, %struct.cx231xx_dmaqueue* %129, i32 %130, i8* %133, i64 %136)
  %138 = load i64, i64* %10, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %127, %123, %108
  br label %104

141:                                              ; preds = %104
  %142 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %143 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %9, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = getelementptr inbounds i8, i8* %147, i64 -4
  %149 = call i32 @memcpy(i32 %144, i8* %148, i32 4)
  store i64 0, i64* %10, align 8
  br label %150

150:                                              ; preds = %141, %54
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %52, %34, %19
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_find_boundary_SAV_EAV(i8*, i32, i64*) #1

declare dso_local i64 @cx231xx_get_vbi_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32, i8*, i64) #1

declare dso_local i32 @cx231xx_find_next_SAV_EAV(i8*, i64, i64*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
