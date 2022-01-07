; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_send_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_send_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, i32* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i8*, i32, i32, i32*, i8*)* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpUnknownReason = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"payload=0x%p, partid=%d, channel=%d\0A\00", align 1
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_N_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_initiate_send_notify(i16 signext %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.xpc_partition*, align 8
  %16 = alloca i32, align 4
  store i16 %0, i16* %8, align 2
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %18 = load i16, i16* %8, align 2
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %17, i64 %19
  store %struct.xpc_partition* %20, %struct.xpc_partition** %15, align 8
  %21 = load i32, i32* @xpUnknownReason, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @xpc_chan, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i16, i16* %8, align 2
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23, i16 signext %24, i32 %25)
  %27 = load i16, i16* %8, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %7
  %31 = load i16, i16* %8, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* @xp_max_npartitions, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sge i32 %32, %34
  br label %36

36:                                               ; preds = %30, %7
  %37 = phi i1 [ true, %7 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @DBUG_ON(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.xpc_partition*, %struct.xpc_partition** %15, align 8
  %45 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i1 [ true, %36 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @DBUG_ON(i32 %50)
  %52 = load i8*, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @DBUG_ON(i32 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @DBUG_ON(i32 %58)
  %60 = load %struct.xpc_partition*, %struct.xpc_partition** %15, align 8
  %61 = call i64 @xpc_part_ref(%struct.xpc_partition* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %48
  %64 = load i32 (i32*, i32, i8*, i32, i32, i32*, i8*)*, i32 (i32*, i32, i8*, i32, i32, i32*, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %65 = load %struct.xpc_partition*, %struct.xpc_partition** %15, align 8
  %66 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @XPC_N_CALL, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 %64(i32* %70, i32 %71, i8* %72, i32 %73, i32 %74, i32* %75, i8* %76)
  store i32 %77, i32* %16, align 4
  %78 = load %struct.xpc_partition*, %struct.xpc_partition** %15, align 8
  %79 = call i32 @xpc_part_deref(%struct.xpc_partition* %78)
  br label %80

80:                                               ; preds = %63, %48
  %81 = load i32, i32* %16, align 4
  ret i32 %81
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
