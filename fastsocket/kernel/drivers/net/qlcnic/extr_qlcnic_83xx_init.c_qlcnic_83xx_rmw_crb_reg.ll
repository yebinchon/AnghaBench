; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_rmw_crb_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_rmw_crb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.qlc_83xx_rmw = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i32, i32, %struct.qlc_83xx_rmw*)* @qlcnic_83xx_rmw_crb_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_rmw_crb_reg(%struct.qlcnic_adapter* %0, i32 %1, i32 %2, %struct.qlc_83xx_rmw* %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlc_83xx_rmw*, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.qlc_83xx_rmw* %3, %struct.qlc_83xx_rmw** %8, align 8
  %10 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %11 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %22 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %14
  %32 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %33 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %38 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %43 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %48 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %53 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
