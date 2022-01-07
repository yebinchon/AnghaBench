; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_discard_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_discard_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }

@PCI_REVISION_ID = common dso_local global i32 0, align 4
@RSXX_DISCARD_SUPPORT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*)* @rsxx_discard_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_discard_supported(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  %3 = alloca i8, align 1
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  %4 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %5 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PCI_REVISION_ID, align 4
  %8 = call i32 @pci_read_config_byte(i32 %6, i32 %7, i8* %3)
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @RSXX_DISCARD_SUPPORT, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sge i32 %10, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
