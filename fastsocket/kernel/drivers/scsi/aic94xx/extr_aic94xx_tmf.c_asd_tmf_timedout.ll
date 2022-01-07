; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_tmf_timedout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_tmf_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.tasklet_completion_status* }
%struct.tasklet_completion_status = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"tmf timed out\0A\00", align 1
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @asd_tmf_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_tmf_timedout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.tasklet_completion_status*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.asd_ascb*
  store %struct.asd_ascb* %7, %struct.asd_ascb** %3, align 8
  %8 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %9 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %8, i32 0, i32 1
  %10 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %9, align 8
  store %struct.tasklet_completion_status* %10, %struct.tasklet_completion_status** %4, align 8
  %11 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  %13 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %4, align 8
  %14 = getelementptr inbounds %struct.tasklet_completion_status, %struct.tasklet_completion_status* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %16 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @complete(i32 %17)
  ret void
}

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
