; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_ext_wwn_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_ext_wwn_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.bnx2x = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@func_ext_config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_get_ext_wwn_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_ext_wwn_info(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_ext_config, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @MF_CFG_RD(%struct.bnx2x* %5, i32 %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i8* %12, i8** %15, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_ext_config, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @MF_CFG_RD(%struct.bnx2x* %16, i32 %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i8* %23, i8** %26, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_ext_config, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @MF_CFG_RD(%struct.bnx2x* %27, i32 %33)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_ext_config, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @MF_CFG_RD(%struct.bnx2x* %38, i32 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  ret void
}

declare dso_local i8* @MF_CFG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
