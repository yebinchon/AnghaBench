; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, %struct.i2400m_bootrom_header*, %struct.TYPE_2__ }
%struct.i2400m_bootrom_header = type { i8*, i8*, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.anon = type { %struct.i2400m_bootrom_header, [16 x i32] }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@I2400M_BRH_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"BM: read mac addr failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"mac addr is %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"BM is MAC addr impaired, faking MAC addr to mac addr is %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_read_mac_addr(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.i2400m_bootrom_header*, align 8
  %7 = alloca %struct.anon, align 1
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %16 = call i32 @d_fnstart(i32 5, %struct.device* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %15)
  %17 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 1
  %19 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %18, align 8
  store %struct.i2400m_bootrom_header* %19, %struct.i2400m_bootrom_header** %6, align 8
  %20 = load i32, i32* @I2400M_BRH_READ, align 4
  %21 = call i32 @i2400m_brh_command(i32 %20, i32 0, i32 1)
  %22 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %6, align 8
  %23 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = call i8* @cpu_to_le32(i32 2113512)
  %25 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %6, align 8
  %26 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @cpu_to_le32(i32 6)
  %28 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %6, align 8
  %29 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %31 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %6, align 8
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %33 = call i32 @i2400m_bm_cmd(%struct.i2400m* %30, %struct.i2400m_bootrom_header* %31, i32 24, %struct.i2400m_bootrom_header* %32, i32 88, i32 0)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %113

40:                                               ; preds = %1
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %42, i64 0, i64 0
  %44 = load i32, i32* %43, align 1
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %45, i64 0, i64 1
  %47 = load i32, i32* %46, align 1
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %48, i64 0, i64 2
  %50 = load i32, i32* %49, align 1
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i64 0, i64 3
  %53 = load i32, i32* %52, align 1
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 4
  %56 = load i32, i32* %55, align 1
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %57, i64 0, i64 5
  %59 = load i32, i32* %58, align 1
  %60 = call i32 @d_printf(i32 2, %struct.device* %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %62 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %95

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %66, i64 0, i64 0
  store i32 0, i32* %67, align 1
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %68, i64 0, i64 1
  store i32 22, i32* %69, align 1
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %70, i64 0, i64 2
  store i32 211, i32* %71, align 1
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %72, i64 0, i64 3
  %74 = call i32 @get_random_bytes(i32* %73, i32 3)
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %76, i64 0, i64 0
  %78 = load i32, i32* %77, align 1
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %79, i64 0, i64 1
  %81 = load i32, i32* %80, align 1
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %82, i64 0, i64 2
  %84 = load i32, i32* %83, align 1
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %85, i64 0, i64 3
  %87 = load i32, i32* %86, align 1
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %88, i64 0, i64 4
  %90 = load i32, i32* %89, align 1
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %91, i64 0, i64 5
  %93 = load i32, i32* %92, align 1
  %94 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %65, %40
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %102, i64 0, i64 0
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32 %101, i32* %103, i32 %104)
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %109, i64 0, i64 0
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32 %108, i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %95, %36
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @d_fnend(i32 5, %struct.device* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m* %115, i32 %116)
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @i2400m_brh_command(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2400m_bm_cmd(%struct.i2400m*, %struct.i2400m_bootrom_header*, i32, %struct.i2400m_bootrom_header*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
