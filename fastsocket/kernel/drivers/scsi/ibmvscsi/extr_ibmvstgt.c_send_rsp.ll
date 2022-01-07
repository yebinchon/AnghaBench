; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_send_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_send_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { i32 }
%struct.scsi_cmnd = type { i32 }
%union.viosrp_iu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8, i32*, i64, i32, i64, i64, i64, i32, i32 }

@V_LINKED = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i8 0, align 1
@SRP_RSP = common dso_local global i32 0, align 4
@V_DIOVER = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DIOVER = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_RSPVALID = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_SNSVALID = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i8 0, align 1
@SRP_RSP_SENSE_DATA_LEN = common dso_local global i64 0, align 8
@VIOSRP_SRP_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iu_entry*, %struct.scsi_cmnd*, i8, i8)* @send_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_rsp(%struct.iu_entry* %0, %struct.scsi_cmnd* %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %union.viosrp_iu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.iu_entry* %0, %struct.iu_entry** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %12 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %13 = call %union.viosrp_iu* @vio_iu(%struct.iu_entry* %12)
  store %union.viosrp_iu* %13, %union.viosrp_iu** %9, align 8
  %14 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %15 = bitcast %union.viosrp_iu* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @V_LINKED, align 4
  %20 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %21 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @NO_SENSE, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8 16, i8* %7, align 1
  br label %31

31:                                               ; preds = %30, %24, %4
  %32 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %33 = call i32 @memset(%union.viosrp_iu* %32, i32 0, i32 4)
  %34 = load i32, i32* @SRP_RSP, align 4
  %35 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %36 = bitcast %union.viosrp_iu* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 9
  store i32 %34, i32* %38, align 4
  %39 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %40 = bitcast %union.viosrp_iu* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %45 = bitcast %union.viosrp_iu* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 8
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* @V_DIOVER, align 4
  %49 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %50 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %49, i32 0, i32 0
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %31
  %54 = load i32, i32* @SRP_RSP_FLAG_DIOVER, align 4
  %55 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %56 = bitcast %union.viosrp_iu* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %53, %31
  %62 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %63 = bitcast %union.viosrp_iu* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 7
  store i64 0, i64* %65, align 8
  %66 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %67 = bitcast %union.viosrp_iu* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @SRP_RSP_FLAG_RSPVALID, align 4
  %71 = xor i32 %70, -1
  %72 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %73 = bitcast %union.viosrp_iu* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %71
  store i32 %77, i32* %75, align 8
  %78 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %79 = bitcast %union.viosrp_iu* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load i8, i8* %7, align 1
  %83 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %84 = bitcast %union.viosrp_iu* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8 %82, i8* %86, align 4
  %87 = load i8, i8* %7, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %147

89:                                               ; preds = %61
  %90 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %91 = bitcast %union.viosrp_iu* %90 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %11, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %96 = icmp ne %struct.scsi_cmnd* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %89
  %98 = load i32, i32* @SRP_RSP_FLAG_SNSVALID, align 4
  %99 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %100 = bitcast %union.viosrp_iu* %99 to %struct.TYPE_4__*
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %98
  store i32 %104, i32* %102, align 8
  %105 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %106 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %107 = bitcast %union.viosrp_iu* %106 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i64 %105, i64* %109, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %115 = call i32 @memcpy(i32* %110, i32 %113, i64 %114)
  br label %146

116:                                              ; preds = %89
  %117 = load i8, i8* @SAM_STAT_CHECK_CONDITION, align 1
  %118 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %119 = bitcast %union.viosrp_iu* %118 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i8 %117, i8* %121, align 4
  %122 = load i32, i32* @SRP_RSP_FLAG_SNSVALID, align 4
  %123 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %124 = bitcast %union.viosrp_iu* %123 to %struct.TYPE_4__*
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 8
  %129 = load i64, i64* @SRP_RSP_SENSE_DATA_LEN, align 8
  %130 = load %union.viosrp_iu*, %union.viosrp_iu** %9, align 8
  %131 = bitcast %union.viosrp_iu* %130 to %struct.TYPE_4__*
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  store i64 %129, i64* %133, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 240, i32* %135, align 4
  %136 = load i8, i8* %7, align 1
  %137 = zext i8 %136 to i32
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 7
  store i32 10, i32* %141, align 4
  %142 = load i8, i8* %8, align 1
  %143 = zext i8 %142 to i32
  %144 = load i32*, i32** %11, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 12
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %116, %97
  br label %147

147:                                              ; preds = %146, %61
  %148 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %149 = load i64, i64* @SRP_RSP_SENSE_DATA_LEN, align 8
  %150 = add i64 64, %149
  %151 = load i32, i32* @VIOSRP_SRP_FORMAT, align 4
  %152 = call i32 @send_iu(%struct.iu_entry* %148, i64 %150, i32 %151)
  ret i32 0
}

declare dso_local %union.viosrp_iu* @vio_iu(%struct.iu_entry*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%union.viosrp_iu*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @send_iu(%struct.iu_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
