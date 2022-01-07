; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, i32* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i8*, i32, i32, i32*, i32*)* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpUnknownReason = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"payload=0x%p, partid=%d, channel=%d\0A\00", align 1
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_initiate_send(i16 signext %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xpc_partition*, align 8
  %12 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %14 = load i16, i16* %6, align 2
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i64 %15
  store %struct.xpc_partition* %16, %struct.xpc_partition** %11, align 8
  %17 = load i32, i32* @xpUnknownReason, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @xpc_chan, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i16, i16* %6, align 2
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %19, i16 signext %20, i32 %21)
  %23 = load i16, i16* %6, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load i16, i16* %6, align 2
  %28 = sext i16 %27 to i32
  %29 = load i16, i16* @xp_max_npartitions, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp sge i32 %28, %30
  br label %32

32:                                               ; preds = %26, %5
  %33 = phi i1 [ true, %5 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @DBUG_ON(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %41 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @DBUG_ON(i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @DBUG_ON(i32 %50)
  %52 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %53 = call i64 @xpc_part_ref(%struct.xpc_partition* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %44
  %56 = load i32 (i32*, i32, i8*, i32, i32, i32*, i32*)*, i32 (i32*, i32, i8*, i32, i32, i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %57 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %58 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 %56(i32* %62, i32 %63, i8* %64, i32 %65, i32 0, i32* null, i32* null)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %68 = call i32 @xpc_part_deref(%struct.xpc_partition* %67)
  br label %69

69:                                               ; preds = %55, %44
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i16 signext, i32) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
