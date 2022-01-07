; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_meyeioc_stillcapt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_meyeioc_stillcapt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEYE_BUF_UNUSED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MEYE_BUF_USING = common dso_local global i64 0, align 8
@MEYE_BUF_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @meyeioc_stillcapt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meyeioc_stillcapt() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %1, align 4
  br label %35

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MEYE_BUF_UNUSED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %35

17:                                               ; preds = %7
  %18 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %19 = load i64, i64* @MEYE_BUF_USING, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = call i32 (...) @mchip_take_picture()
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %25 = call i32 (...) @mchip_hsize()
  %26 = call i32 (...) @mchip_vsize()
  %27 = mul nsw i32 %25, %26
  %28 = mul nsw i32 %27, 2
  %29 = call i32 @mchip_get_picture(i32 %24, i32 %28)
  %30 = load i64, i64* @MEYE_BUF_DONE, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %17, %14, %4
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mchip_take_picture(...) #1

declare dso_local i32 @mchip_get_picture(i32, i32) #1

declare dso_local i32 @mchip_hsize(...) #1

declare dso_local i32 @mchip_vsize(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
