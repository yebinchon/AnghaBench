; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_find_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_find_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_inode = type { %struct.stv0900_inode*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@stv0900_first_inode = common dso_local global %struct.stv0900_inode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stv0900_inode* (%struct.i2c_adapter*, i64)* @find_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stv0900_inode* @find_inode(%struct.i2c_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stv0900_inode*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.stv0900_inode*, %struct.stv0900_inode** @stv0900_first_inode, align 8
  store %struct.stv0900_inode* %6, %struct.stv0900_inode** %5, align 8
  %7 = load %struct.stv0900_inode*, %struct.stv0900_inode** %5, align 8
  %8 = icmp ne %struct.stv0900_inode* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %33, %9
  %11 = load %struct.stv0900_inode*, %struct.stv0900_inode** %5, align 8
  %12 = icmp ne %struct.stv0900_inode* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.stv0900_inode*, %struct.stv0900_inode** %5, align 8
  %15 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %20 = icmp ne %struct.i2c_adapter* %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.stv0900_inode*, %struct.stv0900_inode** %5, align 8
  %23 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i1 [ true, %13 ], [ %28, %21 ]
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i1 [ false, %10 ], [ %30, %29 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load %struct.stv0900_inode*, %struct.stv0900_inode** %5, align 8
  %35 = getelementptr inbounds %struct.stv0900_inode, %struct.stv0900_inode* %34, i32 0, i32 0
  %36 = load %struct.stv0900_inode*, %struct.stv0900_inode** %35, align 8
  store %struct.stv0900_inode* %36, %struct.stv0900_inode** %5, align 8
  br label %10

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.stv0900_inode*, %struct.stv0900_inode** %5, align 8
  ret %struct.stv0900_inode* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
