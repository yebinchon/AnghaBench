; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_probe_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel_id = type { i32 }
%struct.subchannel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @css_probe_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @cio_is_console(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call %struct.subchannel* (...) @cio_get_console_subchannel()
  store %struct.subchannel* %12, %struct.subchannel** %5, align 8
  br label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.subchannel* @css_alloc_subchannel(i32 %15)
  store %struct.subchannel* %16, %struct.subchannel** %5, align 8
  %17 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %18 = call i64 @IS_ERR(%struct.subchannel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.subchannel* %21)
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %26 = call i32 @css_register_subchannel(%struct.subchannel* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @cio_is_console(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 0
  %37 = call i32 @put_device(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @cio_is_console(i32) #1

declare dso_local %struct.subchannel* @cio_get_console_subchannel(...) #1

declare dso_local %struct.subchannel* @css_alloc_subchannel(i32) #1

declare dso_local i64 @IS_ERR(%struct.subchannel*) #1

declare dso_local i32 @PTR_ERR(%struct.subchannel*) #1

declare dso_local i32 @css_register_subchannel(%struct.subchannel*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
