; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_initW6692.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_initW6692.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)*, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i8* }

@setstack_W6692 = common dso_local global i32 0, align 4
@DC_Close_W6692 = common dso_local global i32 0, align 4
@dbusy_timer_handler = common dso_local global i64 0, align 8
@W_L1CMD_RST = common dso_local global i32 0, align 4
@W_L1CMD_ECK = common dso_local global i32 0, align 4
@setstack_w6692 = common dso_local global i8* null, align 8
@close_w6692state = common dso_local global i8* null, align 8
@W_IMASK = common dso_local global i32 0, align 4
@W_D_EXIM = common dso_local global i32 0, align 4
@W_B_EXIM = common dso_local global i32 0, align 4
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RRST = common dso_local global i32 0, align 4
@W_D_CMDR_XRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @initW6692 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initW6692(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %2
  %9 = load i32, i32* @setstack_W6692, align 4
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DC_Close_W6692, align 4
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @dbusy_timer_handler, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = ptrtoint %struct.IsdnCardState* %20 to i64
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 4
  %27 = call i32 @init_timer(%struct.TYPE_7__* %26)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %29 = call i32 @resetW6692(%struct.IsdnCardState* %28)
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %31 = load i32, i32* @W_L1CMD_RST, align 4
  %32 = call i32 @ph_command(%struct.IsdnCardState* %30, i32 %31)
  %33 = load i32, i32* @W_L1CMD_RST, align 4
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %39 = call i32 @W6692_new_ph(%struct.IsdnCardState* %38)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = load i32, i32* @W_L1CMD_ECK, align 4
  %42 = call i32 @ph_command(%struct.IsdnCardState* %40, i32 %41)
  %43 = load i8*, i8** @setstack_w6692, align 8
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** @setstack_w6692, align 8
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i8* %49, i8** %54, align 8
  %55 = load i8*, i8** @close_w6692state, align 8
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  %61 = load i8*, i8** @close_w6692state, align 8
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i8* %61, i8** %66, align 8
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @W6692Bmode(%struct.TYPE_8__* %69, i32 0, i32 0)
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 1
  %75 = call i32 @W6692Bmode(%struct.TYPE_8__* %74, i32 0, i32 0)
  br label %76

76:                                               ; preds = %8, %2
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 0
  %83 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %82, align 8
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %85 = load i32, i32* @W_IMASK, align 4
  %86 = call i32 %83(%struct.IsdnCardState* %84, i32 %85, i32 24)
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %88 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %87, i32 0, i32 0
  %89 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %88, align 8
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %91 = load i32, i32* @W_D_EXIM, align 4
  %92 = call i32 %89(%struct.IsdnCardState* %90, i32 %91, i32 0)
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 1
  %95 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %94, align 8
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %97 = load i32, i32* @W_B_EXIM, align 4
  %98 = call i32 %95(%struct.IsdnCardState* %96, i32 0, i32 %97, i32 0)
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %100 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %99, i32 0, i32 1
  %101 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %100, align 8
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %103 = load i32, i32* @W_B_EXIM, align 4
  %104 = call i32 %101(%struct.IsdnCardState* %102, i32 1, i32 %103, i32 0)
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %106 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %105, i32 0, i32 0
  %107 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %106, align 8
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %109 = load i32, i32* @W_D_CMDR, align 4
  %110 = load i32, i32* @W_D_CMDR_RRST, align 4
  %111 = load i32, i32* @W_D_CMDR_XRST, align 4
  %112 = or i32 %110, %111
  %113 = call i32 %107(%struct.IsdnCardState* %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %80, %76
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @resetW6692(%struct.IsdnCardState*) #1

declare dso_local i32 @ph_command(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @W6692_new_ph(%struct.IsdnCardState*) #1

declare dso_local i32 @W6692Bmode(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
