; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_qdio_setup_ssqd_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_qdio_setup_ssqd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%4x ssqd ERR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rc:%x\00", align 1
@AC1_SIGA_INPUT_NEEDED = common dso_local global i8 0, align 1
@AC1_SIGA_OUTPUT_NEEDED = common dso_local global i8 0, align 1
@AC1_SIGA_SYNC_NEEDED = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"qdioac:%4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdio_setup_ssqd_info(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  %5 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %6 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %6, i32 0, i32 1
  %8 = call i32 @qdio_setup_get_ssqd(%struct.qdio_irq* %5, %struct.TYPE_4__* %7, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %13 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i8, i8* @AC1_SIGA_INPUT_NEEDED, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @AC1_SIGA_OUTPUT_NEEDED, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* @AC1_SIGA_SYNC_NEEDED, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %30 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  store i8 %32, i8* %3, align 1
  br label %33

33:                                               ; preds = %28, %11
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %35 = load i8, i8* %3, align 1
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %37 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @check_and_setup_qebsm(%struct.qdio_irq* %34, i8 zeroext %35, i32 %39)
  %41 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %42 = load i8, i8* %3, align 1
  %43 = call i32 @process_ac_flags(%struct.qdio_irq* %41, i8 zeroext %42)
  %44 = load i8, i8* %3, align 1
  %45 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %44)
  ret void
}

declare dso_local i32 @qdio_setup_get_ssqd(%struct.qdio_irq*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @check_and_setup_qebsm(%struct.qdio_irq*, i8 zeroext, i32) #1

declare dso_local i32 @process_ac_flags(%struct.qdio_irq*, i8 zeroext) #1

declare dso_local i32 @DBF_EVENT(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
