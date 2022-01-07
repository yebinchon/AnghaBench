; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_add_cap_save_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_add_cap_save_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8, i32)* @pci_add_cap_save_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_add_cap_save_buffer(%struct.pci_dev* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_cap_saved_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i8, i8* %6, align 1
  %12 = call i32 @pci_find_capability(%struct.pci_dev* %10, i8 signext %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pci_cap_saved_state* @kzalloc(i32 %20, i32 %21)
  store %struct.pci_cap_saved_state* %22, %struct.pci_cap_saved_state** %9, align 8
  %23 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %9, align 8
  %24 = icmp ne %struct.pci_cap_saved_state* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %16
  %29 = load i8, i8* %6, align 1
  %30 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %9, align 8
  %31 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8 %29, i8* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %9, align 8
  %35 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %9, align 8
  %39 = call i32 @pci_add_saved_cap(%struct.pci_dev* %37, %struct.pci_cap_saved_state* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %25, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i8 signext) #1

declare dso_local %struct.pci_cap_saved_state* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_add_saved_cap(%struct.pci_dev*, %struct.pci_cap_saved_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
