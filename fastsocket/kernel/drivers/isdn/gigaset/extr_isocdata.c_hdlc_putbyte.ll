; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_putbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SBUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"received oversized packet discarded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.bc_state*)* @hdlc_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_putbyte(i8 zeroext %0, %struct.bc_state* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.bc_state*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.bc_state* %1, %struct.bc_state** %4, align 8
  %5 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i8, i8* %3, align 1
  %9 = call i32 @crc_ccitt_byte(i32 %7, i8 zeroext %8)
  %10 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %13 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %22 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SBUFSIZE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %20
  %32 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %33 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %39 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @dev_kfree_skb_any(%struct.TYPE_9__* %47)
  %49 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %50 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %49, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %50, align 8
  br label %57

51:                                               ; preds = %20
  %52 = load i8, i8* %3, align 1
  %53 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %54 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i8* @__skb_put(%struct.TYPE_9__* %55, i32 1)
  store i8 %52, i8* %56, align 1
  br label %57

57:                                               ; preds = %51, %31, %19
  ret void
}

declare dso_local i32 @crc_ccitt_byte(i32, i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_9__*) #1

declare dso_local i8* @__skb_put(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
