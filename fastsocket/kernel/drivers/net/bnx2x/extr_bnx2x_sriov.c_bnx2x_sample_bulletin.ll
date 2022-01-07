; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sample_bulletin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sample_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.pf_vf_bulletin_content, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.pf_vf_bulletin_content = type { i64, i64, i32, i32, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.pf_vf_bulletin_content }

@PFVF_BULLETIN_UNCHANGED = common dso_local global i32 0, align 4
@BULLETIN_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"bad crc on bulletin board. Contained %x computed %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"pf to vf bulletin board crc was wrong %d consecutive times. Aborting\0A\00", align 1
@PFVF_BULLETIN_CRC_ERR = common dso_local global i32 0, align 4
@MAC_ADDR_VALID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_VALID = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@PFVF_BULLETIN_UPDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_sample_bulletin(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.pf_vf_bulletin_content, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = bitcast %struct.pf_vf_bulletin_content* %4 to i8*
  %11 = bitcast %struct.pf_vf_bulletin_content* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @PFVF_BULLETIN_UNCHANGED, align 4
  store i32 %20, i32* %2, align 4
  br label %117

21:                                               ; preds = %1
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BULLETIN_ATTEMPTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = bitcast %struct.pf_vf_bulletin_content* %4 to i8*
  %44 = bitcast %struct.pf_vf_bulletin_content* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 32, i1 false)
  %45 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = call i64 @bnx2x_crc_vf_bulletin(%struct.bnx2x* %47, %struct.pf_vf_bulletin_content* %4)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %61

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = call i64 @bnx2x_crc_vf_bulletin(%struct.bnx2x* %55, %struct.pf_vf_bulletin_content* %4)
  %57 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %34

61:                                               ; preds = %50, %34
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @BULLETIN_ATTEMPTS, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @PFVF_BULLETIN_CRC_ERR, align 4
  store i32 %68, i32* %2, align 4
  br label %117

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %21
  %71 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MAC_ADDR_VALID, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i64 @memcmp(i32* %79, i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %77
  %88 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @ETH_ALEN, align 4
  %96 = call i32 @memcpy(i32* %92, i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %77, %70
  %98 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VLAN_VALID, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %4, i32 0, i32 3
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %107, i32 0, i32 3
  %109 = load i32, i32* @VLAN_HLEN, align 4
  %110 = call i32 @memcpy(i32* %105, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  %112 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 0
  %114 = bitcast %struct.pf_vf_bulletin_content* %113 to i8*
  %115 = bitcast %struct.pf_vf_bulletin_content* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 32, i1 false)
  %116 = load i32, i32* @PFVF_BULLETIN_UPDATED, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %65, %19
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bnx2x_crc_vf_bulletin(%struct.bnx2x*, %struct.pf_vf_bulletin_content*) #2

declare dso_local i32 @BNX2X_ERR(i8*, i32, ...) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
