; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_tunnel_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_tunnel_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, %struct.pppol2tp_tunnel* }
%struct.pppol2tp_tunnel = type { i32 (%struct.sock*)*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@PPPOL2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: closing...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pppol2tp_tunnel_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_tunnel_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pppol2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 1
  %6 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %5, align 8
  store %struct.pppol2tp_tunnel* %6, %struct.pppol2tp_tunnel** %3, align 8
  %7 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %8 = icmp eq %struct.pppol2tp_tunnel* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %12 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %17 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PRINTK(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %21 = call i32 @pppol2tp_tunnel_closeall(%struct.pppol2tp_tunnel* %20)
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %29 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %31 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %30, i32 0, i32 0
  %32 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  store i32 (%struct.sock*)* %32, i32 (%struct.sock*)** %34, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  store %struct.pppol2tp_tunnel* null, %struct.pppol2tp_tunnel** %36, align 8
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = icmp ne i32 (%struct.sock*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %10
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %43, align 8
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = call i32 %44(%struct.sock* %45)
  br label %47

47:                                               ; preds = %41, %10
  %48 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %3, align 8
  %49 = call i32 @pppol2tp_tunnel_dec_refcount(%struct.pppol2tp_tunnel* %48)
  br label %50

50:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pppol2tp_tunnel_closeall(%struct.pppol2tp_tunnel*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @pppol2tp_tunnel_dec_refcount(%struct.pppol2tp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
