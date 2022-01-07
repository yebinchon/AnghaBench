; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_ready_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_ready_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"test unit ready\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i32)* @pcd_ready_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_ready_wait(%struct.pcd_unit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcd_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcd_unit* %0, %struct.pcd_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [12 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %16 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %19 = call i32 @DBMSG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @pcd_atapi(%struct.pcd_unit* %17, i8* %18, i32 0, i32* null, i32 %19)
  %21 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %22 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %43

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 1026
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = call i32 @pcd_sleep(i32 %40)
  br label %10

42:                                               ; preds = %10
  store i32 32, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pcd_atapi(%struct.pcd_unit*, i8*, i32, i32*, i32) #2

declare dso_local i32 @DBMSG(i8*) #2

declare dso_local i32 @pcd_sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
