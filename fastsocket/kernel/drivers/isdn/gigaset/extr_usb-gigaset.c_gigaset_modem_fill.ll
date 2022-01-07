; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_gigaset_modem_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_gigaset_modem_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.cmdbuf_t*, %struct.TYPE_4__, %struct.bc_state* }
%struct.cmdbuf_t = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bc_state = type { i64, i32 }

@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"modem_fill\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"modem_fill: busy\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"modem_fill: cb\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"modem_fill: send_cb failed\00", align 1
@DEBUG_INTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Dequeued skb (Adr: %lx)!\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"modem_fill: tx_skb\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"modem_fill: write_modem failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gigaset_modem_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_modem_fill(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca %struct.cmdbuf_t*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.cardstate*
  store %struct.cardstate* %8, %struct.cardstate** %3, align 8
  %9 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 2
  %11 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i64 0
  store %struct.bc_state* %12, %struct.bc_state** %4, align 8
  %13 = load i32, i32* @DEBUG_OUTPUT, align 4
  %14 = call i32 (i32, i8*, ...) @gig_dbg(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @DEBUG_OUTPUT, align 4
  %24 = call i32 (i32, i8*, ...) @gig_dbg(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %85

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %82, %25
  store i32 0, i32* %6, align 4
  %27 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %28 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %26
  %32 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 0
  %34 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %33, align 8
  store %struct.cmdbuf_t* %34, %struct.cmdbuf_t** %5, align 8
  %35 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  %36 = icmp ne %struct.cmdbuf_t* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* @DEBUG_OUTPUT, align 4
  %39 = call i32 (i32, i8*, ...) @gig_dbg(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %41 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %5, align 8
  %42 = call i64 @send_cb(%struct.cardstate* %40, %struct.cmdbuf_t* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @DEBUG_OUTPUT, align 4
  %46 = call i32 (i32, i8*, ...) @gig_dbg(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %37
  br label %65

48:                                               ; preds = %31
  %49 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %50 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %49, i32 0, i32 1
  %51 = call i64 @skb_dequeue(i32* %50)
  %52 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %53 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %55 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @DEBUG_INTR, align 4
  %60 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %61 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, ...) @gig_dbg(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %58, %48
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %68 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32, i32* @DEBUG_OUTPUT, align 4
  %73 = call i32 (i32, i8*, ...) @gig_dbg(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %75 = call i64 @write_modem(%struct.cardstate* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @DEBUG_OUTPUT, align 4
  %79 = call i32 (i32, i8*, ...) @gig_dbg(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %26, label %85

85:                                               ; preds = %22, %82
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i64 @send_cb(%struct.cardstate*, %struct.cmdbuf_t*) #1

declare dso_local i64 @skb_dequeue(i32*) #1

declare dso_local i64 @write_modem(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
