; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ultrastor.c_ultrastor_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ultrastor.c_ultrastor_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.mscp*, i32, i32* }
%struct.mscp = type { void (%struct.scsi_cmnd*)*, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@FAILED = common dso_local global i32 0, align 4
@ULTRASTOR_MAX_CMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Ux4F aborting invalid MSCP\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Bad abort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ultrastor_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ultrastor_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca void (%struct.scsi_cmnd*)*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %8, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @FAILED, align 4
  store i32 %18, i32* %2, align 4
  br label %133

19:                                               ; preds = %1
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %2, align 4
  br label %133

26:                                               ; preds = %19
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.mscp*
  %31 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %32 = ptrtoint %struct.mscp* %30 to i64
  %33 = ptrtoint %struct.mscp* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 16
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ULTRASTOR_MAX_CMDS, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* @DID_ABORT, align 4
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 5), align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call zeroext i8 @xchgb(i32 %43, i32* %47)
  store i8 %48, i8* %5, align 1
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %133

54:                                               ; preds = %42
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %54
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 8
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @inb(i32 %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_lock_irqsave(i32 %65, i64 %66)
  %68 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mscp, %struct.mscp* %68, i64 %70
  %72 = call i32 @isa_virt_to_bus(%struct.mscp* %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 8
  %74 = call i32 @outl(i32 %72, i32 %73)
  %75 = call i32 @udelay(i32 8)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 8
  %77 = sub nsw i32 %76, 1
  %78 = call i32 @outb(i32 128, i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 8
  %80 = call i32 @LCL_DOORBELL_INTR(i32 %79)
  %81 = call i32 @outb(i32 2, i32 %80)
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32 %84, i64 %85)
  %87 = load i32, i32* @SUCCESS, align 4
  store i32 %87, i32* %2, align 4
  br label %133

88:                                               ; preds = %57, %54
  %89 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.mscp, %struct.mscp* %89, i64 %91
  %93 = getelementptr inbounds %struct.mscp, %struct.mscp* %92, i32 0, i32 1
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %93, align 8
  %95 = icmp eq %struct.scsi_cmnd* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @FAILED, align 4
  store i32 %97, i32* %2, align 4
  br label %133

98:                                               ; preds = %88
  %99 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %100 = load i32, i32* %4, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mscp, %struct.mscp* %99, i64 %101
  %103 = getelementptr inbounds %struct.mscp, %struct.mscp* %102, i32 0, i32 1
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %103, align 8
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %106 = icmp ne %struct.scsi_cmnd* %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %98
  %110 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mscp, %struct.mscp* %110, i64 %112
  %114 = getelementptr inbounds %struct.mscp, %struct.mscp* %113, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %114, align 8
  %115 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mscp, %struct.mscp* %115, i64 %117
  %119 = getelementptr inbounds %struct.mscp, %struct.mscp* %118, i32 0, i32 0
  %120 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %119, align 8
  store void (%struct.scsi_cmnd*)* %120, void (%struct.scsi_cmnd*)** %7, align 8
  %121 = load %struct.mscp*, %struct.mscp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mscp, %struct.mscp* %121, i64 %123
  %125 = getelementptr inbounds %struct.mscp, %struct.mscp* %124, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* null, void (%struct.scsi_cmnd*)** %125, align 8
  %126 = load i32, i32* @DID_ABORT, align 4
  %127 = shl i32 %126, 16
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %7, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %130(%struct.scsi_cmnd* %131)
  %132 = load i32, i32* @SUCCESS, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %109, %96, %62, %52, %24, %17
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @panic(i8*) #1

declare dso_local zeroext i8 @xchgb(i32, i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @isa_virt_to_bus(%struct.mscp*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @LCL_DOORBELL_INTR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
