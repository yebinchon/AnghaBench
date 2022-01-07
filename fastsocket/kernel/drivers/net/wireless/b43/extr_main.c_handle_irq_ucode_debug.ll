; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_handle_irq_ucode_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_handle_irq_ucode_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_SHM_SCRATCH = common dso_local global i32 0, align 4
@B43_DEBUGIRQ_REASON_REG = common dso_local global i32 0, align 4
@B43_DEBUG = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SHM-dump: Failed to allocate memory\0A\00", align 1
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Shared memory dump:\0A\00", align 1
@KERN_INFO = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Microcode register dump:\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"r%02u: 0x%04X  \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@B43_MARKER_ID_REG = common dso_local global i32 0, align 4
@B43_MARKER_LINE_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"The firmware just executed the MARKER(%u) at line number %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Debug-IRQ triggered for unknown reason: %u\0A\00", align 1
@B43_DEBUGIRQ_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @handle_irq_ucode_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_irq_ucode_debug(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %140

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %20 = load i32, i32* @B43_DEBUGIRQ_REASON_REG, align 4
  %21 = call i32 @b43_shm_read16(%struct.b43_wldev* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %127 [
    i32 128, label %23
    i32 130, label %26
    i32 131, label %70
    i32 129, label %108
  ]

23:                                               ; preds = %17
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @b43_handle_firmware_panic(%struct.b43_wldev* %24)
  br label %133

26:                                               ; preds = %17
  %27 = load i32, i32* @B43_DEBUG, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %133

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i32* @kmalloc(i32 4096, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @b43dbg(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %134

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %3, align 4
  %43 = icmp ult i32 %42, 4096
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_SHM_SHARED, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @b43_shm_read16(%struct.b43_wldev* %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %3, align 4
  %53 = udiv i32 %52, 2
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 2
  store i32 %58, i32* %3, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @b43info(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** @KERN_INFO, align 8
  %65 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @print_hex_dump(i8* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 16, i32 2, i32* %66, i32 4096, i32 1)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @kfree(i32* %68)
  br label %133

70:                                               ; preds = %17
  %71 = load i32, i32* @B43_DEBUG, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %133

74:                                               ; preds = %70
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @b43info(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %103, %74
  %80 = load i32, i32* %3, align 4
  %81 = icmp ult i32 %80, 64
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @b43_shm_read16(%struct.b43_wldev* %83, i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** @KERN_INFO, align 8
  %91 = call i32 (i8*, ...) @printk(i8* %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 6
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %79

106:                                              ; preds = %79
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %133

108:                                              ; preds = %17
  %109 = load i32, i32* @B43_DEBUG, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %133

112:                                              ; preds = %108
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %115 = load i32, i32* @B43_MARKER_ID_REG, align 4
  %116 = call i32 @b43_shm_read16(%struct.b43_wldev* %113, i32 %114, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %119 = load i32, i32* @B43_MARKER_LINE_REG, align 4
  %120 = call i32 @b43_shm_read16(%struct.b43_wldev* %117, i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i32, i8*, ...) @b43info(i32 %123, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %125)
  br label %133

127:                                              ; preds = %17
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i8*, ...) @b43dbg(i32 %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %112, %111, %106, %73, %59, %29, %23
  br label %134

134:                                              ; preds = %133, %35
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %137 = load i32, i32* @B43_DEBUGIRQ_REASON_REG, align 4
  %138 = load i32, i32* @B43_DEBUGIRQ_ACK, align 4
  %139 = call i32 @b43_shm_write16(%struct.b43_wldev* %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %16
  ret void
}

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_handle_firmware_panic(%struct.b43_wldev*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @b43dbg(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @b43info(i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i8*, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
