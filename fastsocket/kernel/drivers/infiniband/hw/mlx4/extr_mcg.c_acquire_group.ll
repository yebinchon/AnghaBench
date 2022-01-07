; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_acquire_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_acquire_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.mlx4_ib_demux_ctx* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %union.ib_gid }
%union.ib_gid = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_ib_demux_ctx = type { i32, i32, i32 }

@mgid0 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_VFS = common dso_local global i32 0, align 4
@mlx4_ib_mcg_work_handler = common dso_local global i32 0, align 4
@mlx4_ib_mcg_timeout_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%016llx%016llx\00", align 1
@sysfs_show_group = common dso_local global i32 0, align 4
@MCAST_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"group just showed up %s - confused\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mcast_group* (%struct.mlx4_ib_demux_ctx*, %union.ib_gid*, i32, i32)* @acquire_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx* %0, %union.ib_gid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mcast_group*, align 8
  %6 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mcast_group*, align 8
  %11 = alloca %struct.mcast_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %6, align 8
  store %union.ib_gid* %1, %union.ib_gid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %15 = call i32 @memcmp(i32* @mgid0, %union.ib_gid* %14, i32 4)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %23 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %24 = call %struct.mcast_group* @mcast_find(%struct.mlx4_ib_demux_ctx* %22, %union.ib_gid* %23)
  store %struct.mcast_group* %24, %struct.mcast_group** %10, align 8
  %25 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %26 = icmp ne %struct.mcast_group* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %167

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.mcast_group* @ERR_PTR(i32 %34)
  store %struct.mcast_group* %35, %struct.mcast_group** %5, align 8
  br label %172

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.mcast_group* @kzalloc(i32 88, i32 %37)
  store %struct.mcast_group* %38, %struct.mcast_group** %10, align 8
  %39 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %40 = icmp ne %struct.mcast_group* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.mcast_group* @ERR_PTR(i32 %43)
  store %struct.mcast_group* %44, %struct.mcast_group** %5, align 8
  br label %172

45:                                               ; preds = %36
  %46 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %47 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %48 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %47, i32 0, i32 11
  store %struct.mlx4_ib_demux_ctx* %46, %struct.mlx4_ib_demux_ctx** %48, align 8
  %49 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %50 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %53 = bitcast %union.ib_gid* %51 to i8*
  %54 = bitcast %union.ib_gid* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 8, i1 false)
  %55 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %56 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %55, i32 0, i32 10
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %59 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %58, i32 0, i32 3
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %74, %45
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @MAX_VFS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %67 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %66, i32 0, i32 9
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %79 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %78, i32 0, i32 8
  %80 = load i32, i32* @mlx4_ib_mcg_work_handler, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %83 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %82, i32 0, i32 7
  %84 = load i32, i32* @mlx4_ib_mcg_timeout_handler, align 4
  %85 = call i32 @INIT_DELAYED_WORK(i32* %83, i32 %84)
  %86 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %87 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %86, i32 0, i32 6
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %90 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %93 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = bitcast %union.ib_gid* %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be64_to_cpu(i32 %97)
  %99 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %100 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = bitcast %union.ib_gid* %101 to %struct.TYPE_8__*
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be64_to_cpu(i32 %104)
  %106 = call i32 @sprintf(i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %105)
  %107 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %108 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @sysfs_attr_init(%struct.TYPE_11__* %109)
  %111 = load i32, i32* @sysfs_show_group, align 4
  %112 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %113 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  %115 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %116 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %119 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %122 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %126 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 256, i32* %128, align 8
  %129 = load i32, i32* @MCAST_IDLE, align 4
  %130 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %131 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %77
  %135 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %136 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %135, i32 0, i32 3
  %137 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %137, i32 0, i32 2
  %139 = call i32 @list_add(i32* %136, i32* %138)
  br label %167

140:                                              ; preds = %77
  %141 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %142 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %143 = call %struct.mcast_group* @mcast_insert(%struct.mlx4_ib_demux_ctx* %141, %struct.mcast_group* %142)
  store %struct.mcast_group* %143, %struct.mcast_group** %11, align 8
  %144 = load %struct.mcast_group*, %struct.mcast_group** %11, align 8
  %145 = icmp ne %struct.mcast_group* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.mcast_group*, %struct.mcast_group** %11, align 8
  %148 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @mcg_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %152 = call i32 @kfree(%struct.mcast_group* %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  %155 = call %struct.mcast_group* @ERR_PTR(i32 %154)
  store %struct.mcast_group* %155, %struct.mcast_group** %5, align 8
  br label %172

156:                                              ; preds = %140
  %157 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %158 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %164 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = call i32 @add_sysfs_port_mcg_attr(i32 %159, i32 %162, %struct.TYPE_11__* %165)
  br label %167

167:                                              ; preds = %156, %134, %27
  %168 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  %169 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %168, i32 0, i32 0
  %170 = call i32 @atomic_inc(i32* %169)
  %171 = load %struct.mcast_group*, %struct.mcast_group** %10, align 8
  store %struct.mcast_group* %171, %struct.mcast_group** %5, align 8
  br label %172

172:                                              ; preds = %167, %146, %41, %32
  %173 = load %struct.mcast_group*, %struct.mcast_group** %5, align 8
  ret %struct.mcast_group* %173
}

declare dso_local i32 @memcmp(i32*, %union.ib_gid*, i32) #1

declare dso_local %struct.mcast_group* @mcast_find(%struct.mlx4_ib_demux_ctx*, %union.ib_gid*) #1

declare dso_local %struct.mcast_group* @ERR_PTR(i32) #1

declare dso_local %struct.mcast_group* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_11__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.mcast_group* @mcast_insert(%struct.mlx4_ib_demux_ctx*, %struct.mcast_group*) #1

declare dso_local i32 @mcg_warn(i8*, i32) #1

declare dso_local i32 @kfree(%struct.mcast_group*) #1

declare dso_local i32 @add_sysfs_port_mcg_attr(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
