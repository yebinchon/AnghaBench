; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_slot.c_address_read_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_slot.c_address_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%04x:%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%04x:%02x:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*, i8*)* @address_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @address_read_file(%struct.pci_slot* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_slot*, align 8
  %5 = alloca i8*, align 8
  store %struct.pci_slot* %0, %struct.pci_slot** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %7 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %13 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @pci_domain_nr(%struct.TYPE_2__* %14)
  %16 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %17 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %25 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @pci_domain_nr(%struct.TYPE_2__* %26)
  %28 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %29 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %34 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %22, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
