; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_n0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_n0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*)* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@cmsg = common dso_local global i32 0, align 4
@global = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@EV_PLCI_DISCONNECT_REQ = common dso_local global i32 0, align 4
@ISDN_STAT_BHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*)* @n0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n0(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @global, i32 0, i32 0, i32 0), align 4
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @capi_fill_DISCONNECT_REQ(i32* @cmsg, i32 %6, i32 %9, i32 %15, i32* null, i32* null, i32* null, i32* null)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = load i32, i32* @EV_PLCI_DISCONNECT_REQ, align 4
  %22 = call i32 @plci_change_state(%struct.TYPE_20__* %17, %struct.TYPE_21__* %20, i32 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = call i32 @send_message(%struct.TYPE_20__* %23, i32* @cmsg)
  %25 = load i32, i32* @ISDN_STAT_BHUP, align 4
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %37, align 8
  %39 = call i32 %38(%struct.TYPE_18__* %5)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = call i32 @free_ncci(%struct.TYPE_20__* %40, %struct.TYPE_19__* %41)
  ret void
}

declare dso_local i32 @capi_fill_DISCONNECT_REQ(i32*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @plci_change_state(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @send_message(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @free_ncci(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
