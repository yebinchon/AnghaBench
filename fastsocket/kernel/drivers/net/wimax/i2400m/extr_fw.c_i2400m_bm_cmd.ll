; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_bm_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_fw.c_i2400m_bm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64, i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64, i32)*, i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64)*, i32 }
%struct.i2400m_bootrom_header = type { i32, i32, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"(i2400m %p cmd %p size %zu ack %p size %zu)\0A\00", align 1
@I2400M_BM_CMD_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"boot-mode cmd %d csum %u rr %u da %u: addr 0x%04x size %u block csum 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"boot-mode cmd %d: error waiting for an ack: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"(i2400m %p cmd %p size %zu ack %p size %zu) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64, %struct.i2400m_bootrom_header*, i64, i32)* @i2400m_bm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2400m_bm_cmd(%struct.i2400m* %0, %struct.i2400m_bootrom_header* %1, i64 %2, %struct.i2400m_bootrom_header* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.i2400m*, align 8
  %8 = alloca %struct.i2400m_bootrom_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2400m_bootrom_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %7, align 8
  store %struct.i2400m_bootrom_header* %1, %struct.i2400m_bootrom_header** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.i2400m_bootrom_header* %3, %struct.i2400m_bootrom_header** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* @ENOMEM, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %13, align 8
  %19 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %20 = call %struct.device* @i2400m_dev(%struct.i2400m* %19)
  store %struct.device* %20, %struct.device** %15, align 8
  %21 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %22 = icmp eq %struct.i2400m_bootrom_header* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %27

24:                                               ; preds = %6
  %25 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %26 = call i32 @i2400m_brh_get_opcode(%struct.i2400m_bootrom_header* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ -1, %23 ], [ %26, %24 ]
  store i32 %28, i32* %16, align 4
  %29 = load %struct.device*, %struct.device** %15, align 8
  %30 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %31 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @d_fnstart(i32 6, %struct.device* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %30, %struct.i2400m_bootrom_header* %31, i64 %32, %struct.i2400m_bootrom_header* %33, i64 %34)
  %36 = load i64, i64* %11, align 8
  %37 = icmp ult i64 %36, 12
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %41 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %47 = icmp ne %struct.i2400m_bootrom_header* %46, null
  br i1 %47, label %48, label %91

48:                                               ; preds = %27
  %49 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %50 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @memcpy(i32 %51, %struct.i2400m_bootrom_header* %52, i64 %53)
  %55 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %56 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %55, i32 0, i32 1
  %57 = load i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64, i32)*, i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64, i32)** %56, align 8
  %58 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %59 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i64 %57(%struct.i2400m* %58, %struct.i2400m_bootrom_header* %59, i64 %60, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %122

66:                                               ; preds = %48
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @I2400M_BM_CMD_RAW, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %15, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %75 = call i32 @i2400m_brh_get_use_checksum(%struct.i2400m_bootrom_header* %74)
  %76 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %77 = call i32 @i2400m_brh_get_response_required(%struct.i2400m_bootrom_header* %76)
  %78 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %79 = call i32 @i2400m_brh_get_direct_access(%struct.i2400m_bootrom_header* %78)
  %80 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %81 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %84 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %87 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @d_printf(i32 5, %struct.device* %72, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75, i32 %77, i32 %79, i32 %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %71, %66
  br label %91

91:                                               ; preds = %90, %27
  %92 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %93 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %92, i32 0, i32 2
  %94 = load i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64)*, i64 (%struct.i2400m*, %struct.i2400m_bootrom_header*, i64)** %93, align 8
  %95 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %96 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 %94(%struct.i2400m* %95, %struct.i2400m_bootrom_header* %96, i64 %97)
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load %struct.device*, %struct.device** %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i64, i64* %13, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %105)
  br label %121

107:                                              ; preds = %91
  %108 = load i64, i64* %13, align 8
  store i64 %108, i64* %14, align 8
  %109 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i64 @__i2400m_bm_ack_verify(%struct.i2400m* %109, i32 %110, %struct.i2400m_bootrom_header* %111, i64 %112, i32 %113)
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %120

118:                                              ; preds = %107
  %119 = load i64, i64* %14, align 8
  store i64 %119, i64* %13, align 8
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %65
  %123 = load %struct.device*, %struct.device** %15, align 8
  %124 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %125 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* %13, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @d_fnend(i32 6, %struct.device* %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %124, %struct.i2400m_bootrom_header* %125, i64 %126, %struct.i2400m_bootrom_header* %127, i64 %128, i32 %130)
  %132 = load i64, i64* %13, align 8
  ret i64 %132
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @i2400m_brh_get_opcode(%struct.i2400m_bootrom_header*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bootrom_header*, i64, %struct.i2400m_bootrom_header*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, %struct.i2400m_bootrom_header*, i64) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2400m_brh_get_use_checksum(%struct.i2400m_bootrom_header*) #1

declare dso_local i32 @i2400m_brh_get_response_required(%struct.i2400m_bootrom_header*) #1

declare dso_local i32 @i2400m_brh_get_direct_access(%struct.i2400m_bootrom_header*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @__i2400m_bm_ack_verify(%struct.i2400m*, i32, %struct.i2400m_bootrom_header*, i64, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_bootrom_header*, i64, %struct.i2400m_bootrom_header*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
