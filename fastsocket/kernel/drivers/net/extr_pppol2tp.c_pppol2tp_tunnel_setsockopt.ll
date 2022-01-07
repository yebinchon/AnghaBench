; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_tunnel_setsockopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_tunnel_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pppol2tp_tunnel = type { i32, i32 }

@PPPOL2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: set debug=%x\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.pppol2tp_tunnel*, i32, i32)* @pppol2tp_tunnel_setsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_tunnel_setsockopt(%struct.sock* %0, %struct.pppol2tp_tunnel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.pppol2tp_tunnel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.pppol2tp_tunnel* %1, %struct.pppol2tp_tunnel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %27 [
    i32 128, label %11
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %14 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %16 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %21 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %6, align 8
  %24 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PRINTK(i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOPROTOOPT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %11
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
