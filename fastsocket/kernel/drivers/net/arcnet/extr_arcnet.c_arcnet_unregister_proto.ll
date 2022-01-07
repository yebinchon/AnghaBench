; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_unregister_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_arcnet_unregister_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ArcProto = type { i32 }

@arc_proto_default = common dso_local global %struct.ArcProto* null, align 8
@arc_proto_null = common dso_local global %struct.ArcProto zeroinitializer, align 4
@arc_bcast_proto = common dso_local global %struct.ArcProto* null, align 8
@arc_raw_proto = common dso_local global %struct.ArcProto* null, align 8
@arc_proto_map = common dso_local global %struct.ArcProto** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arcnet_unregister_proto(%struct.ArcProto* %0) #0 {
  %2 = alloca %struct.ArcProto*, align 8
  %3 = alloca i32, align 4
  store %struct.ArcProto* %0, %struct.ArcProto** %2, align 8
  %4 = load %struct.ArcProto*, %struct.ArcProto** @arc_proto_default, align 8
  %5 = load %struct.ArcProto*, %struct.ArcProto** %2, align 8
  %6 = icmp eq %struct.ArcProto* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.ArcProto* @arc_proto_null, %struct.ArcProto** @arc_proto_default, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load %struct.ArcProto*, %struct.ArcProto** @arc_bcast_proto, align 8
  %10 = load %struct.ArcProto*, %struct.ArcProto** %2, align 8
  %11 = icmp eq %struct.ArcProto* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load %struct.ArcProto*, %struct.ArcProto** @arc_proto_default, align 8
  store %struct.ArcProto* %13, %struct.ArcProto** @arc_bcast_proto, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.ArcProto*, %struct.ArcProto** @arc_raw_proto, align 8
  %16 = load %struct.ArcProto*, %struct.ArcProto** %2, align 8
  %17 = icmp eq %struct.ArcProto* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load %struct.ArcProto*, %struct.ArcProto** @arc_proto_default, align 8
  store %struct.ArcProto* %19, %struct.ArcProto** @arc_raw_proto, align 8
  br label %20

20:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load %struct.ArcProto**, %struct.ArcProto*** @arc_proto_map, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ArcProto*, %struct.ArcProto** %25, i64 %27
  %29 = load %struct.ArcProto*, %struct.ArcProto** %28, align 8
  %30 = load %struct.ArcProto*, %struct.ArcProto** %2, align 8
  %31 = icmp eq %struct.ArcProto* %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.ArcProto*, %struct.ArcProto** @arc_proto_default, align 8
  %34 = load %struct.ArcProto**, %struct.ArcProto*** @arc_proto_map, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ArcProto*, %struct.ArcProto** %34, i64 %36
  store %struct.ArcProto* %33, %struct.ArcProto** %37, align 8
  br label %38

38:                                               ; preds = %32, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %21

42:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
