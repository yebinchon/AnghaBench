; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_update_iscsi_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_update_iscsi_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_9__*, i32, i32, i32, i64, i64, %struct.bnx2i_conn* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64 }
%struct.bnx2i_conn = type { %struct.TYPE_8__*, %struct.bnx2i_hba* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.bnx2i_hba = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.iscsi_kwqe_conn_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ISCSI_KWQE_OPCODE_UPDATE_CONN = common dso_local global i32 0, align 4
@ISCSI_KWQE_LAYER_CODE = common dso_local global i32 0, align 4
@ISCSI_KWQE_HEADER_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@ISCSI_KWQE_CONN_UPDATE_HEADER_DIGEST = common dso_local global i32 0, align 4
@ISCSI_KWQE_CONN_UPDATE_DATA_DIGEST = common dso_local global i32 0, align 4
@ISCSI_KWQE_CONN_UPDATE_INITIAL_R2T = common dso_local global i32 0, align 4
@ISCSI_KWQE_CONN_UPDATE_IMMEDIATE_DATA = common dso_local global i32 0, align 4
@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"bnx2i: conn update - MBL 0x%x FBL 0x%xMRDSL_I 0x%x MRDSL_T 0x%x \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_update_iscsi_conn(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.bnx2i_hba*, align 8
  %5 = alloca [2 x %struct.kwqe*], align 16
  %6 = alloca %struct.iscsi_kwqe_conn_update*, align 8
  %7 = alloca %struct.iscsi_kwqe_conn_update, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 6
  %10 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %9, align 8
  store %struct.bnx2i_conn* %10, %struct.bnx2i_conn** %3, align 8
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %11, i32 0, i32 1
  %13 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %12, align 8
  store %struct.bnx2i_hba* %13, %struct.bnx2i_hba** %4, align 8
  store %struct.iscsi_kwqe_conn_update* %7, %struct.iscsi_kwqe_conn_update** %6, align 8
  %14 = load i32, i32* @ISCSI_KWQE_OPCODE_UPDATE_CONN, align 4
  %15 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @ISCSI_KWQE_LAYER_CODE, align 4
  %19 = load i32, i32* @ISCSI_KWQE_HEADER_LAYER_CODE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %25 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %24, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %50

41:                                               ; preds = %1
  %42 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 7
  %48 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %41, %33
  %51 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %51, i32 0, i32 8
  store i32 0, i32* %52, align 4
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @ISCSI_KWQE_CONN_UPDATE_HEADER_DIGEST, align 4
  %59 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %60 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @ISCSI_KWQE_CONN_UPDATE_DATA_DIGEST, align 4
  %70 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @ISCSI_KWQE_CONN_UPDATE_INITIAL_R2T, align 4
  %83 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %84 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %89 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @ISCSI_KWQE_CONN_UPDATE_IMMEDIATE_DATA, align 4
  %96 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %102 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %105 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %110 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %112 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %117 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %119 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %124 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %126 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %129 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %131 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %136 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %138 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %143 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @KERN_ALERT, align 4
  %145 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %146 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %147 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %150 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %153 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %156 = getelementptr inbounds %struct.iscsi_kwqe_conn_update, %struct.iscsi_kwqe_conn_update* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @iscsi_conn_printk(i32 %144, %struct.iscsi_conn* %145, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %151, i32 %154, i32 %157)
  %159 = load %struct.iscsi_kwqe_conn_update*, %struct.iscsi_kwqe_conn_update** %6, align 8
  %160 = bitcast %struct.iscsi_kwqe_conn_update* %159 to %struct.kwqe*
  %161 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %5, i64 0, i64 0
  store %struct.kwqe* %160, %struct.kwqe** %161, align 16
  %162 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %163 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = icmp ne %struct.TYPE_10__* %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %100
  %167 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %168 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %167, i32 0, i32 0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32 (%struct.TYPE_10__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_10__*, %struct.kwqe**, i32)** %170, align 8
  %172 = icmp ne i32 (%struct.TYPE_10__*, %struct.kwqe**, i32)* %171, null
  br i1 %172, label %173, label %184

173:                                              ; preds = %166
  %174 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %175 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32 (%struct.TYPE_10__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_10__*, %struct.kwqe**, i32)** %177, align 8
  %179 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %180 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %5, i64 0, i64 0
  %183 = call i32 %178(%struct.TYPE_10__* %181, %struct.kwqe** %182, i32 1)
  br label %184

184:                                              ; preds = %173, %166, %100
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
