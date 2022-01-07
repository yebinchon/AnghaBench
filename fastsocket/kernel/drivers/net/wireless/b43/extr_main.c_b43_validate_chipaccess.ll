; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_validate_chipaccess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_validate_chipaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_SHM_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unaligned 32bit SHM read access is broken\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unaligned 32bit SHM write access is broken\0A\00", align 1
@B43_MMIO_TSF_CFP_START = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CFP_START_LOW = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CFP_START_HIGH = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_GMODE = common dso_local global i32 0, align 4
@B43_MACCTL_IHR_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to validate the chipaccess\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_validate_chipaccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_validate_chipaccess(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = load i32, i32* @B43_SHM_SHARED, align 4
  %9 = call i32 @b43_shm_read32(%struct.b43_wldev* %7, i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = load i32, i32* @B43_SHM_SHARED, align 4
  %12 = call i32 @b43_shm_read32(%struct.b43_wldev* %10, i32 %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = load i32, i32* @B43_SHM_SHARED, align 4
  %15 = call i32 @b43_shm_write32(%struct.b43_wldev* %13, i32 %14, i32 0, i32 1437248085)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = load i32, i32* @B43_SHM_SHARED, align 4
  %18 = call i32 @b43_shm_read32(%struct.b43_wldev* %16, i32 %17, i32 0)
  %19 = icmp ne i32 %18, 1437248085
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %138

21:                                               ; preds = %1
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @B43_SHM_SHARED, align 4
  %24 = call i32 @b43_shm_write32(%struct.b43_wldev* %22, i32 %23, i32 0, i32 -1437248086)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_SHM_SHARED, align 4
  %27 = call i32 @b43_shm_read32(%struct.b43_wldev* %25, i32 %26, i32 0)
  %28 = icmp ne i32 %27, -1437248086
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %138

30:                                               ; preds = %21
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_SHM_SHARED, align 4
  %33 = call i32 @b43_shm_write16(%struct.b43_wldev* %31, i32 %32, i32 0, i32 4386)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* @B43_SHM_SHARED, align 4
  %36 = call i32 @b43_shm_write16(%struct.b43_wldev* %34, i32 %35, i32 2, i32 13124)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* @B43_SHM_SHARED, align 4
  %39 = call i32 @b43_shm_write16(%struct.b43_wldev* %37, i32 %38, i32 4, i32 21862)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* @B43_SHM_SHARED, align 4
  %42 = call i32 @b43_shm_write16(%struct.b43_wldev* %40, i32 %41, i32 6, i32 30600)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = load i32, i32* @B43_SHM_SHARED, align 4
  %45 = call i32 @b43_shm_read32(%struct.b43_wldev* %43, i32 %44, i32 2)
  %46 = icmp ne i32 %45, 1432761156
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @b43warn(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %30
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_SHM_SHARED, align 4
  %55 = call i32 @b43_shm_write32(%struct.b43_wldev* %53, i32 %54, i32 2, i32 -1430532899)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %57 = load i32, i32* @B43_SHM_SHARED, align 4
  %58 = call i32 @b43_shm_read16(%struct.b43_wldev* %56, i32 %57, i32 0)
  %59 = icmp ne i32 %58, 4386
  br i1 %59, label %75, label %60

60:                                               ; preds = %52
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load i32, i32* @B43_SHM_SHARED, align 4
  %63 = call i32 @b43_shm_read16(%struct.b43_wldev* %61, i32 %62, i32 2)
  %64 = icmp ne i32 %63, 52445
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = load i32, i32* @B43_SHM_SHARED, align 4
  %68 = call i32 @b43_shm_read16(%struct.b43_wldev* %66, i32 %67, i32 4)
  %69 = icmp ne i32 %68, 43707
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %72 = load i32, i32* @B43_SHM_SHARED, align 4
  %73 = call i32 @b43_shm_read16(%struct.b43_wldev* %71, i32 %72, i32 6)
  %74 = icmp ne i32 %73, 30600
  br i1 %74, label %75, label %80

75:                                               ; preds = %70, %65, %60, %52
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @b43warn(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = load i32, i32* @B43_SHM_SHARED, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @b43_shm_write32(%struct.b43_wldev* %81, i32 %82, i32 0, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = load i32, i32* @B43_SHM_SHARED, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @b43_shm_write32(%struct.b43_wldev* %85, i32 %86, i32 4, i32 %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 3
  br i1 %94, label %95, label %121

95:                                               ; preds = %80
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %100, 10
  br i1 %101, label %102, label %121

102:                                              ; preds = %95
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %104 = load i32, i32* @B43_MMIO_TSF_CFP_START, align 4
  %105 = call i32 @b43_write16(%struct.b43_wldev* %103, i32 %104, i32 43690)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %107 = load i32, i32* @B43_MMIO_TSF_CFP_START, align 4
  %108 = call i32 @b43_write32(%struct.b43_wldev* %106, i32 %107, i32 -858997829)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %110 = load i32, i32* @B43_MMIO_TSF_CFP_START_LOW, align 4
  %111 = call i32 @b43_read16(%struct.b43_wldev* %109, i32 %110)
  %112 = icmp ne i32 %111, 48059
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %138

114:                                              ; preds = %102
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %116 = load i32, i32* @B43_MMIO_TSF_CFP_START_HIGH, align 4
  %117 = call i32 @b43_read16(%struct.b43_wldev* %115, i32 %116)
  %118 = icmp ne i32 %117, 52428
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %138

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %95, %80
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = load i32, i32* @B43_MMIO_TSF_CFP_START, align 4
  %124 = call i32 @b43_write32(%struct.b43_wldev* %122, i32 %123, i32 0)
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %127 = call i32 @b43_read32(%struct.b43_wldev* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @B43_MACCTL_GMODE, align 4
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @B43_MACCTL_GMODE, align 4
  %133 = load i32, i32* @B43_MACCTL_IHR_ENABLED, align 4
  %134 = or i32 %132, %133
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  br label %138

137:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %145

138:                                              ; preds = %136, %119, %113, %29, %20
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %140 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @b43err(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %138, %137
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @b43_shm_read32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_shm_write32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43warn(i32, i8*) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
