; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_request_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32* }
%struct.nic = type { i32, i64, %struct.firmware*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ich = common dso_local global i32 0, align 4
@mac_82559_D101M = common dso_local global i64 0, align 8
@FIRMWARE_D101M = common dso_local global i8* null, align 8
@mac_82559_D101S = common dso_local global i64 0, align 8
@FIRMWARE_D101S = common dso_local global i8* null, align 8
@mac_82551_F = common dso_local global i64 0, align 8
@mac_82551_10 = common dso_local global i64 0, align 8
@FIRMWARE_D102E = common dso_local global i8* null, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to load firmware \22%s\22: %d\0A\00", align 1
@UCODE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Firmware \22%s\22 has wrong size %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\22%s\22 has bogus offset values (0x%x,0x%x,0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.firmware* (%struct.nic*)* @e100_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.firmware* @e100_request_firmware(%struct.nic* %0) #0 {
  %2 = alloca %struct.firmware*, align 8
  %3 = alloca %struct.nic*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  %10 = load %struct.nic*, %struct.nic** %3, align 8
  %11 = getelementptr inbounds %struct.nic, %struct.nic* %10, i32 0, i32 2
  %12 = load %struct.firmware*, %struct.firmware** %11, align 8
  store %struct.firmware* %12, %struct.firmware** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.nic*, %struct.nic** %3, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ich, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.firmware* null, %struct.firmware** %2, align 8
  br label %160

20:                                               ; preds = %1
  %21 = load %struct.nic*, %struct.nic** %3, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @mac_82559_D101M, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i8*, i8** @FIRMWARE_D101M, align 8
  store i8* %27, i8** %4, align 8
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.nic*, %struct.nic** %3, align 8
  %30 = getelementptr inbounds %struct.nic, %struct.nic* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @mac_82559_D101S, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i8*, i8** @FIRMWARE_D101S, align 8
  store i8* %35, i8** %4, align 8
  br label %52

36:                                               ; preds = %28
  %37 = load %struct.nic*, %struct.nic** %3, align 8
  %38 = getelementptr inbounds %struct.nic, %struct.nic* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @mac_82551_F, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.nic*, %struct.nic** %3, align 8
  %44 = getelementptr inbounds %struct.nic, %struct.nic* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @mac_82551_10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %36
  %49 = load i8*, i8** @FIRMWARE_D102E, align 8
  store i8* %49, i8** %4, align 8
  br label %51

50:                                               ; preds = %42
  store %struct.firmware* null, %struct.firmware** %2, align 8
  br label %160

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.firmware*, %struct.firmware** %5, align 8
  %55 = icmp ne %struct.firmware* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.nic*, %struct.nic** %3, align 8
  %59 = getelementptr inbounds %struct.nic, %struct.nic* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @request_firmware(%struct.firmware** %5, i8* %57, i32* %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %56, %53
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.nic*, %struct.nic** %3, align 8
  %68 = load i32, i32* @probe, align 4
  %69 = load %struct.nic*, %struct.nic** %3, align 8
  %70 = getelementptr inbounds %struct.nic, %struct.nic* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.nic*, i32, i32, i8*, i8*, i32, ...) @netif_err(%struct.nic* %67, i32 %68, i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.firmware* @ERR_PTR(i32 %75)
  store %struct.firmware* %76, %struct.firmware** %2, align 8
  br label %160

77:                                               ; preds = %63
  %78 = load %struct.firmware*, %struct.firmware** %5, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @UCODE_SIZE, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 %82, 3
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load %struct.nic*, %struct.nic** %3, align 8
  %87 = load i32, i32* @probe, align 4
  %88 = load %struct.nic*, %struct.nic** %3, align 8
  %89 = getelementptr inbounds %struct.nic, %struct.nic* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.firmware*, %struct.firmware** %5, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.nic*, i32, i32, i8*, i8*, i32, ...) @netif_err(%struct.nic* %86, i32 %87, i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %91, i32 %94)
  %96 = load %struct.firmware*, %struct.firmware** %5, align 8
  %97 = call i32 @release_firmware(%struct.firmware* %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.firmware* @ERR_PTR(i32 %99)
  store %struct.firmware* %100, %struct.firmware** %2, align 8
  br label %160

101:                                              ; preds = %77
  %102 = load %struct.firmware*, %struct.firmware** %5, align 8
  %103 = getelementptr inbounds %struct.firmware, %struct.firmware* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @UCODE_SIZE, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  %110 = load %struct.firmware*, %struct.firmware** %5, align 8
  %111 = getelementptr inbounds %struct.firmware, %struct.firmware* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @UCODE_SIZE, align 4
  %114 = mul nsw i32 %113, 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  %119 = load %struct.firmware*, %struct.firmware** %5, align 8
  %120 = getelementptr inbounds %struct.firmware, %struct.firmware* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @UCODE_SIZE, align 4
  %123 = mul nsw i32 %122, 4
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @UCODE_SIZE, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %101
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @UCODE_SIZE, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @UCODE_SIZE, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %135, %131, %101
  %140 = load %struct.nic*, %struct.nic** %3, align 8
  %141 = load i32, i32* @probe, align 4
  %142 = load %struct.nic*, %struct.nic** %3, align 8
  %143 = getelementptr inbounds %struct.nic, %struct.nic* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (%struct.nic*, i32, i32, i8*, i8*, i32, ...) @netif_err(%struct.nic* %140, i32 %141, i32 %144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.firmware*, %struct.firmware** %5, align 8
  %151 = call i32 @release_firmware(%struct.firmware* %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  %154 = call %struct.firmware* @ERR_PTR(i32 %153)
  store %struct.firmware* %154, %struct.firmware** %2, align 8
  br label %160

155:                                              ; preds = %135
  %156 = load %struct.firmware*, %struct.firmware** %5, align 8
  %157 = load %struct.nic*, %struct.nic** %3, align 8
  %158 = getelementptr inbounds %struct.nic, %struct.nic* %157, i32 0, i32 2
  store %struct.firmware* %156, %struct.firmware** %158, align 8
  %159 = load %struct.firmware*, %struct.firmware** %5, align 8
  store %struct.firmware* %159, %struct.firmware** %2, align 8
  br label %160

160:                                              ; preds = %155, %139, %85, %66, %50, %19
  %161 = load %struct.firmware*, %struct.firmware** %2, align 8
  ret %struct.firmware* %161
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, i32, i8*, i8*, i32, ...) #1

declare dso_local %struct.firmware* @ERR_PTR(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
