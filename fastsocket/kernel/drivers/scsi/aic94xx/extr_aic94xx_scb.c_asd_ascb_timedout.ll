; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_ascb_timedout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_ascb_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"scb:0x%x timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_ascb_timedout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.asd_seq_data*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.asd_ascb*
  store %struct.asd_ascb* %8, %struct.asd_ascb** %3, align 8
  %9 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %10 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.asd_seq_data* %12, %struct.asd_seq_data** %4, align 8
  %13 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %14 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %21 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %25 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %29 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %28, i32 0, i32 0
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %32 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %36 = call i32 @asd_ascb_free(%struct.asd_ascb* %35)
  ret void
}

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @asd_ascb_free(%struct.asd_ascb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
