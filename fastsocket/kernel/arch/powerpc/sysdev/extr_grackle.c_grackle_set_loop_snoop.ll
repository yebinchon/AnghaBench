; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_grackle.c_grackle_set_loop_snoop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_grackle.c_grackle_set_loop_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32, i32 }

@GRACKLE_PICR1_LOOPSNOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*, i32)* @grackle_set_loop_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grackle_set_loop_snoop(%struct.pci_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %7 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GRACKLE_CFA(i32 0, i32 0, i32 168)
  %10 = call i32 @out_be32(i32 %8, i32 %9)
  %11 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %12 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @in_le32(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @GRACKLE_PICR1_LOOPSNOOP, align 4
  %20 = or i32 %18, %19
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GRACKLE_PICR1_LOOPSNOOP, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %20, %17 ], [ %25, %21 ]
  store i32 %27, i32* %5, align 4
  %28 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %29 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GRACKLE_CFA(i32 0, i32 0, i32 168)
  %32 = call i32 @out_be32(i32 %30, i32 %31)
  %33 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %34 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @out_le32(i32 %35, i32 %36)
  %38 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %39 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @in_le32(i32 %40)
  ret void
}

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @GRACKLE_CFA(i32, i32, i32) #1

declare dso_local i32 @in_le32(i32) #1

declare dso_local i32 @out_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
