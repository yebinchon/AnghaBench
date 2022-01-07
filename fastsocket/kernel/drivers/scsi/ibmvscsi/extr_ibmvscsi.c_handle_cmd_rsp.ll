; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_handle_cmd_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_handle_cmd_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.scsi_cmnd.0*, %struct.TYPE_7__* }
%struct.scsi_cmnd = type opaque
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_cmnd.0 = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.srp_rsp }
%struct.srp_rsp = type { i64, i32, i32, i32, i32, i32, i32 }

@SRP_RSP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"bad SRP RSP type %d\0A\00", align 1
@CHECK_CONDITION = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DOOVER = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DIOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_event_struct*)* @handle_cmd_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cmd_rsp(%struct.srp_event_struct* %0) #0 {
  %2 = alloca %struct.srp_event_struct*, align 8
  %3 = alloca %struct.srp_rsp*, align 8
  %4 = alloca %struct.scsi_cmnd.0*, align 8
  store %struct.srp_event_struct* %0, %struct.srp_event_struct** %2, align 8
  %5 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %6 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %5, i32 0, i32 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.srp_rsp* %9, %struct.srp_rsp** %3, align 8
  %10 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %11 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %10, i32 0, i32 3
  %12 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %11, align 8
  store %struct.scsi_cmnd.0* %12, %struct.scsi_cmnd.0** %4, align 8
  %13 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %14 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SRP_RSP, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = call i64 (...) @printk_ratelimit()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %26 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %31 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %24, %21
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %37 = icmp ne %struct.scsi_cmnd.0* %36, null
  br i1 %37, label %38, label %103

38:                                               ; preds = %35
  %39 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %40 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd.0, %struct.scsi_cmnd.0* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd.0, %struct.scsi_cmnd.0* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 1
  %50 = and i32 %49, 31
  %51 = load i32, i32* @CHECK_CONDITION, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %38
  %54 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd.0, %struct.scsi_cmnd.0* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %58 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %61 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %38
  %65 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %66 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %70 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %71 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @unmap_cmd_data(i32* %68, %struct.srp_event_struct* %69, i32 %74)
  %76 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %77 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SRP_RSP_FLAG_DOOVER, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %64
  %83 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %84 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %85 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @scsi_set_resid(%struct.scsi_cmnd.0* %83, i32 %86)
  br label %102

88:                                               ; preds = %64
  %89 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %90 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SRP_RSP_FLAG_DIOVER, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %97 = load %struct.srp_rsp*, %struct.srp_rsp** %3, align 8
  %98 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @scsi_set_resid(%struct.scsi_cmnd.0* %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %88
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %35
  %104 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %105 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %104, i32 0, i32 0
  %106 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %105, align 8
  %107 = icmp ne i32 (%struct.scsi_cmnd*)* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %110 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %109, i32 0, i32 0
  %111 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %110, align 8
  %112 = load %struct.scsi_cmnd.0*, %struct.scsi_cmnd.0** %4, align 8
  %113 = bitcast %struct.scsi_cmnd.0* %112 to %struct.scsi_cmnd*
  %114 = call i32 %111(%struct.scsi_cmnd* %113)
  br label %115

115:                                              ; preds = %108, %103
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @unmap_cmd_data(i32*, %struct.srp_event_struct*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
