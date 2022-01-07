; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_check_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32 }
%struct.meth_private = type { i64 }

@METH_100MBIT = common dso_local global i64 0, align 8
@METH_PHY_FDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Setting %s-duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@mace = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Setting %dMbs mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @meth_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_check_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.meth_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.meth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.meth_private* %10, %struct.meth_private** %3, align 8
  %11 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %12 = call i64 @mdio_read(%struct.meth_private* %11, i32 4)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %14 = call i64 @mdio_read(%struct.meth_private* %13, i32 5)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 65535
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %115

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 896
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @METH_100MBIT, align 8
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i64 [ %26, %25 ], [ 0, %27 ]
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, 256
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, 448
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %28
  %38 = load i64, i64* @METH_PHY_FDX, align 8
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %39 ]
  store i64 %41, i64* %7, align 8
  %42 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %43 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @METH_PHY_FDX, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = xor i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i64, i64* @METH_PHY_FDX, align 8
  %60 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %61 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %71

64:                                               ; preds = %50
  %65 = load i64, i64* @METH_PHY_FDX, align 8
  %66 = xor i64 %65, -1
  %67 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %68 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = and i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %73 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %71, %40
  %79 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %80 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @METH_100MBIT, align 8
  %83 = and i64 %81, %82
  %84 = load i64, i64* %8, align 8
  %85 = xor i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %78
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 100, i32 10
  %92 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i64, i64* @METH_100MBIT, align 8
  %97 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %98 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %108

101:                                              ; preds = %87
  %102 = load i64, i64* @METH_100MBIT, align 8
  %103 = xor i64 %102, -1
  %104 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %105 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %110 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %115

115:                                              ; preds = %20, %108, %78
  ret void
}

declare dso_local %struct.meth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mdio_read(%struct.meth_private*, i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
