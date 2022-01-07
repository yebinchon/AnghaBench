; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_host_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_host_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32 }
%struct.ide_hw = type { i32 }
%struct.ide_host = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_host_add(%struct.ide_port_info* %0, %struct.ide_hw** %1, i32 %2, %struct.ide_host** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ide_port_info*, align 8
  %7 = alloca %struct.ide_hw**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ide_host**, align 8
  %10 = alloca %struct.ide_host*, align 8
  %11 = alloca i32, align 4
  store %struct.ide_port_info* %0, %struct.ide_port_info** %6, align 8
  store %struct.ide_hw** %1, %struct.ide_hw*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ide_host** %3, %struct.ide_host*** %9, align 8
  %12 = load %struct.ide_port_info*, %struct.ide_port_info** %6, align 8
  %13 = load %struct.ide_hw**, %struct.ide_hw*** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.ide_host* @ide_host_alloc(%struct.ide_port_info* %12, %struct.ide_hw** %13, i32 %14)
  store %struct.ide_host* %15, %struct.ide_host** %10, align 8
  %16 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %17 = icmp eq %struct.ide_host* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %39

21:                                               ; preds = %4
  %22 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %23 = load %struct.ide_port_info*, %struct.ide_port_info** %6, align 8
  %24 = load %struct.ide_hw**, %struct.ide_hw*** %7, align 8
  %25 = call i32 @ide_host_register(%struct.ide_host* %22, %struct.ide_port_info* %23, %struct.ide_hw** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %30 = call i32 @ide_host_free(%struct.ide_host* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.ide_host**, %struct.ide_host*** %9, align 8
  %34 = icmp ne %struct.ide_host** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %37 = load %struct.ide_host**, %struct.ide_host*** %9, align 8
  store %struct.ide_host* %36, %struct.ide_host** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %28, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.ide_host* @ide_host_alloc(%struct.ide_port_info*, %struct.ide_hw**, i32) #1

declare dso_local i32 @ide_host_register(%struct.ide_host*, %struct.ide_port_info*, %struct.ide_hw**) #1

declare dso_local i32 @ide_host_free(%struct.ide_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
