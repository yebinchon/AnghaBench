; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_pio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_pio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_pio }
%struct.b43_pio = type { i32, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_BE = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_RXPADOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PIO initialized\0A\00", align 1
@tx_queue_mcast = common dso_local global i32 0, align 4
@tx_queue_AC_VO = common dso_local global i32 0, align 4
@tx_queue_AC_VI = common dso_local global i32 0, align 4
@tx_queue_AC_BE = common dso_local global i32 0, align 4
@tx_queue_AC_BK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_pio_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_pio*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  store %struct.b43_pio* %7, %struct.b43_pio** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %14 = call i32 @b43_read32(%struct.b43_wldev* %12, i32 %13)
  %15 = load i32, i32* @B43_MACCTL_BE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @b43_write32(%struct.b43_wldev* %10, i32 %11, i32 %17)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i32, i32* @B43_SHM_SHARED, align 4
  %21 = load i32, i32* @B43_SHM_SH_RXPADOFF, align 4
  %22 = call i32 @b43_shm_write16(%struct.b43_wldev* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = call i8* @b43_setup_pioqueue_tx(%struct.b43_wldev* %23, i32 0)
  %25 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %26 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %28 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %87

32:                                               ; preds = %1
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i8* @b43_setup_pioqueue_tx(%struct.b43_wldev* %33, i32 1)
  %35 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %36 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %38 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %105

42:                                               ; preds = %32
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = call i8* @b43_setup_pioqueue_tx(%struct.b43_wldev* %43, i32 2)
  %45 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %46 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %48 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %101

52:                                               ; preds = %42
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = call i8* @b43_setup_pioqueue_tx(%struct.b43_wldev* %53, i32 3)
  %55 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %56 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %58 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %97

62:                                               ; preds = %52
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = call i8* @b43_setup_pioqueue_tx(%struct.b43_wldev* %63, i32 4)
  %65 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %66 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %68 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %93

72:                                               ; preds = %62
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = call i32 @b43_setup_pioqueue_rx(%struct.b43_wldev* %73, i32 0)
  %75 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %76 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %78 = getelementptr inbounds %struct.b43_pio, %struct.b43_pio* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %89

82:                                               ; preds = %72
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @b43dbg(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %31
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %110

89:                                               ; preds = %81
  %90 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %91 = load i32, i32* @tx_queue_mcast, align 4
  %92 = call i32 @destroy_queue_tx(%struct.b43_pio* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %71
  %94 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %95 = load i32, i32* @tx_queue_AC_VO, align 4
  %96 = call i32 @destroy_queue_tx(%struct.b43_pio* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %61
  %98 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %99 = load i32, i32* @tx_queue_AC_VI, align 4
  %100 = call i32 @destroy_queue_tx(%struct.b43_pio* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %51
  %102 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %103 = load i32, i32* @tx_queue_AC_BE, align 4
  %104 = call i32 @destroy_queue_tx(%struct.b43_pio* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %41
  %106 = load %struct.b43_pio*, %struct.b43_pio** %4, align 8
  %107 = load i32, i32* @tx_queue_AC_BK, align 4
  %108 = call i32 @destroy_queue_tx(%struct.b43_pio* %106, i32 %107)
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %105, %87
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i8* @b43_setup_pioqueue_tx(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_setup_pioqueue_rx(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @destroy_queue_tx(%struct.b43_pio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
