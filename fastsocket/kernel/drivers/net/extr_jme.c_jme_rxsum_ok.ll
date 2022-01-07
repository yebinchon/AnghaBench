; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_rxsum_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_rxsum_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@RXWBFLAG_TCPON = common dso_local global i32 0, align 4
@RXWBFLAG_UDPON = common dso_local global i32 0, align 4
@RXWBFLAG_IPV4 = common dso_local global i32 0, align 4
@RXWBFLAG_MF = common dso_local global i32 0, align 4
@RXWBFLAG_TCPCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TCP Checksum error\0A\00", align 1
@RXWBFLAG_UDPCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"UDP Checksum error.\0A\00", align 1
@RXWBFLAG_IPCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"IPv4 Checksum error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, i32)* @jme_rxsum_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_rxsum_ok(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RXWBFLAG_TCPON, align 4
  %8 = load i32, i32* @RXWBFLAG_UDPON, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RXWBFLAG_MF, align 4
  %18 = load i32, i32* @RXWBFLAG_TCPON, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RXWBFLAG_TCPCS, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = load i32, i32* @RXWBFLAG_TCPON, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %35 = call i32 @msg_rx_err(%struct.jme_adapter* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %74

37:                                               ; preds = %15
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @RXWBFLAG_MF, align 4
  %40 = load i32, i32* @RXWBFLAG_UDPON, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RXWBFLAG_UDPCS, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = load i32, i32* @RXWBFLAG_UDPON, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %57 = call i32 @msg_rx_err(%struct.jme_adapter* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %74

59:                                               ; preds = %37
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %62 = load i32, i32* @RXWBFLAG_IPCS, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* @RXWBFLAG_IPV4, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %72 = call i32 @msg_rx_err(%struct.jme_adapter* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

73:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70, %58, %36, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_rx_err(%struct.jme_adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
