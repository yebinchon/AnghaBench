; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_init_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_init_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.igb_adapter* }
%struct.igb_adapter = type { %struct.TYPE_12__, %struct.TYPE_8__*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_7__, %struct.TYPE_11__*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@igb_i2c_algo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"igb BB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_init_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_init_i2c(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %5 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_i350, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 2
  %22 = bitcast %struct.TYPE_11__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_11__* @igb_i2c_algo to i8*), i64 8, i1 false)
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store %struct.igb_adapter* %23, %struct.igb_adapter** %26, align 8
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 2
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %31, align 8
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32* %35, i32** %39, align 8
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strlcpy(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %45, i32 0, i32 0
  %47 = call i32 @i2c_bit_add_bus(%struct.TYPE_12__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %15, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
