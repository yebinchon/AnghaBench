; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_neq_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_neq_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ehea_eqe = type { %struct.ehea_eqe* }

@.str = private unnamed_addr constant [7 x i8] c"eqe=%p\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"*eqe=%lx\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"next eqe=%p\00", align 1
@NELR_PORTSTATE_CHG = common dso_local global i32 0, align 4
@NELR_ADAPTER_MALFUNC = common dso_local global i32 0, align 4
@NELR_PORT_MALFUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ehea_neq_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_neq_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca %struct.ehea_eqe*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ehea_adapter*
  store %struct.ehea_adapter* %7, %struct.ehea_adapter** %3, align 8
  %8 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.ehea_eqe* @ehea_poll_eq(%struct.TYPE_2__* %10)
  store %struct.ehea_eqe* %11, %struct.ehea_eqe** %4, align 8
  %12 = load %struct.ehea_eqe*, %struct.ehea_eqe** %4, align 8
  %13 = call i32 @ehea_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ehea_eqe* %12)
  br label %14

14:                                               ; preds = %17, %1
  %15 = load %struct.ehea_eqe*, %struct.ehea_eqe** %4, align 8
  %16 = icmp ne %struct.ehea_eqe* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.ehea_eqe*, %struct.ehea_eqe** %4, align 8
  %19 = getelementptr inbounds %struct.ehea_eqe, %struct.ehea_eqe* %18, i32 0, i32 0
  %20 = load %struct.ehea_eqe*, %struct.ehea_eqe** %19, align 8
  %21 = call i32 @ehea_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.ehea_eqe* %20)
  %22 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %23 = load %struct.ehea_eqe*, %struct.ehea_eqe** %4, align 8
  %24 = getelementptr inbounds %struct.ehea_eqe, %struct.ehea_eqe* %23, i32 0, i32 0
  %25 = load %struct.ehea_eqe*, %struct.ehea_eqe** %24, align 8
  %26 = call i32 @ehea_parse_eqe(%struct.ehea_adapter* %22, %struct.ehea_eqe* %25)
  %27 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call %struct.ehea_eqe* @ehea_poll_eq(%struct.TYPE_2__* %29)
  store %struct.ehea_eqe* %30, %struct.ehea_eqe** %4, align 8
  %31 = load %struct.ehea_eqe*, %struct.ehea_eqe** %4, align 8
  %32 = call i32 @ehea_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.ehea_eqe* %31)
  br label %14

33:                                               ; preds = %14
  %34 = load i32, i32* @NELR_PORTSTATE_CHG, align 4
  %35 = call i32 @EHEA_BMASK_SET(i32 %34, i32 1)
  %36 = load i32, i32* @NELR_ADAPTER_MALFUNC, align 4
  %37 = call i32 @EHEA_BMASK_SET(i32 %36, i32 1)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @NELR_PORT_MALFUNC, align 4
  %40 = call i32 @EHEA_BMASK_SET(i32 %39, i32 1)
  %41 = or i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ehea_h_reset_events(i32 %44, i32 %49, i32 %50)
  ret void
}

declare dso_local %struct.ehea_eqe* @ehea_poll_eq(%struct.TYPE_2__*) #1

declare dso_local i32 @ehea_debug(i8*, %struct.ehea_eqe*) #1

declare dso_local i32 @ehea_parse_eqe(%struct.ehea_adapter*, %struct.ehea_eqe*) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i32 @ehea_h_reset_events(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
