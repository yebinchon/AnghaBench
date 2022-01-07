; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_isoctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_isoctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32 }
%struct.hpsb_iso_packet_info = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ohci_isoctl cmd %d not implemented yet\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_iso*, i32, i64)* @ohci_isoctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_isoctl(%struct.hpsb_iso* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpsb_iso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %74 [
    i32 132, label %10
    i32 129, label %13
    i32 128, label %17
    i32 131, label %20
    i32 130, label %25
    i32 140, label %28
    i32 135, label %31
    i32 134, label %45
    i32 138, label %48
    i32 141, label %53
    i32 136, label %57
    i32 139, label %60
    i32 133, label %64
    i32 137, label %68
  ]

10:                                               ; preds = %3
  %11 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %12 = call i32 @ohci_iso_xmit_init(%struct.hpsb_iso* %11)
  store i32 %12, i32* %4, align 4
  br label %81

13:                                               ; preds = %3
  %14 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @ohci_iso_xmit_start(%struct.hpsb_iso* %14, i64 %15)
  store i32 %16, i32* %4, align 4
  br label %81

17:                                               ; preds = %3
  %18 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %19 = call i32 @ohci_iso_xmit_stop(%struct.hpsb_iso* %18)
  store i32 0, i32* %4, align 4
  br label %81

20:                                               ; preds = %3
  %21 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to %struct.hpsb_iso_packet_info*
  %24 = call i32 @ohci_iso_xmit_queue(%struct.hpsb_iso* %21, %struct.hpsb_iso_packet_info* %23)
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %27 = call i32 @ohci_iso_xmit_shutdown(%struct.hpsb_iso* %26)
  store i32 0, i32* %4, align 4
  br label %81

28:                                               ; preds = %3
  %29 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %30 = call i32 @ohci_iso_recv_init(%struct.hpsb_iso* %29)
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ohci_iso_recv_start(%struct.hpsb_iso* %34, i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %81

45:                                               ; preds = %3
  %46 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %47 = call i32 @ohci_iso_recv_stop(%struct.hpsb_iso* %46)
  store i32 0, i32* %4, align 4
  br label %81

48:                                               ; preds = %3
  %49 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = inttoptr i64 %50 to %struct.hpsb_iso_packet_info*
  %52 = call i32 @ohci_iso_recv_release(%struct.hpsb_iso* %49, %struct.hpsb_iso_packet_info* %51)
  store i32 0, i32* %4, align 4
  br label %81

53:                                               ; preds = %3
  %54 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %55 = ptrtoint %struct.hpsb_iso* %54 to i64
  %56 = call i32 @ohci_iso_recv_task(i64 %55)
  store i32 0, i32* %4, align 4
  br label %81

57:                                               ; preds = %3
  %58 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %59 = call i32 @ohci_iso_recv_shutdown(%struct.hpsb_iso* %58)
  store i32 0, i32* %4, align 4
  br label %81

60:                                               ; preds = %3
  %61 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ohci_iso_recv_change_channel(%struct.hpsb_iso* %61, i64 %62, i32 1)
  store i32 0, i32* %4, align 4
  br label %81

64:                                               ; preds = %3
  %65 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @ohci_iso_recv_change_channel(%struct.hpsb_iso* %65, i64 %66, i32 0)
  store i32 0, i32* %4, align 4
  br label %81

68:                                               ; preds = %3
  %69 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ohci_iso_recv_set_channel_mask(%struct.hpsb_iso* %69, i32 %72)
  store i32 0, i32* %4, align 4
  br label %81

74:                                               ; preds = %3
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @PRINT_G(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %68, %64, %60, %57, %53, %48, %45, %31, %28, %25, %20, %17, %13, %10
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ohci_iso_xmit_init(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_xmit_start(%struct.hpsb_iso*, i64) #1

declare dso_local i32 @ohci_iso_xmit_stop(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_xmit_queue(%struct.hpsb_iso*, %struct.hpsb_iso_packet_info*) #1

declare dso_local i32 @ohci_iso_xmit_shutdown(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_recv_init(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_recv_start(%struct.hpsb_iso*, i32, i32, i32) #1

declare dso_local i32 @ohci_iso_recv_stop(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_recv_release(%struct.hpsb_iso*, %struct.hpsb_iso_packet_info*) #1

declare dso_local i32 @ohci_iso_recv_task(i64) #1

declare dso_local i32 @ohci_iso_recv_shutdown(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_recv_change_channel(%struct.hpsb_iso*, i64, i32) #1

declare dso_local i32 @ohci_iso_recv_set_channel_mask(%struct.hpsb_iso*, i32) #1

declare dso_local i32 @PRINT_G(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
