; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_trunk_scn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_trunk_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_4__, %struct.bfa_fcport_trunk_s }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.bfa_fcport_trunk_s = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, %struct.bfa_trunk_link_attr_s* }
%struct.bfa_trunk_link_attr_s = type { i64, i64, i64, i64, i64 }
%struct.bfi_fcport_trunk_scn_s = type { i64, i64, %struct.bfi_fcport_trunk_link_s* }
%struct.bfi_fcport_trunk_link_s = type { i64, i64, i64, i64, i32 }

@BFA_TRUNK_ONLINE = common dso_local global i64 0, align 8
@BFA_TRUNK_OFFLINE = common dso_local global i64 0, align 8
@BFA_TRUNK_DISABLED = common dso_local global i64 0, align 8
@BFA_TRUNK_MAX_PORTS = common dso_local global i32 0, align 4
@BFA_TRUNK_LINK_STATE_UP = common dso_local global i64 0, align 8
@BFA_PORT_TOPOLOGY_P2P = common dso_local global i32 0, align 4
@BFA_PL_MID_HAL = common dso_local global i32 0, align 4
@BFA_PL_EID_TRUNK_SCN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Trunk up(0,1)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Trunk up(-,1)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Trunk up(0,-)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Trunk down\00", align 1
@BFA_PORT_LINKUP = common dso_local global i32 0, align 4
@BFA_PORT_LINKDOWN = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, %struct.bfi_fcport_trunk_scn_s*)* @bfa_trunk_scn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_trunk_scn(%struct.bfa_fcport_s* %0, %struct.bfi_fcport_trunk_scn_s* %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca %struct.bfi_fcport_trunk_scn_s*, align 8
  %5 = alloca %struct.bfa_fcport_trunk_s*, align 8
  %6 = alloca %struct.bfi_fcport_trunk_link_s*, align 8
  %7 = alloca %struct.bfa_trunk_link_attr_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store %struct.bfi_fcport_trunk_scn_s* %1, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %11 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %11, i32 0, i32 4
  store %struct.bfa_fcport_trunk_s* %12, %struct.bfa_fcport_trunk_s** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bfa_trc(%struct.TYPE_6__* %15, i64 %19)
  %21 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BFA_TRUNK_ONLINE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BFA_TRUNK_OFFLINE, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %2
  %33 = phi i1 [ false, %2 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @bfa_trc(%struct.TYPE_6__* %38, i64 %42)
  %44 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @bfa_trc(%struct.TYPE_6__* %46, i64 %49)
  %51 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %55 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bfa_trc(%struct.TYPE_6__* %53, i64 %56)
  %58 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %32
  %69 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %70 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BFA_TRUNK_DISABLED, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %77 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %80 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %68, %32
  %83 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %84 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %87 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %187, %82
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @BFA_TRUNK_MAX_PORTS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %190

93:                                               ; preds = %89
  %94 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %95 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %97, i64 %99
  store %struct.bfa_trunk_link_attr_s* %100, %struct.bfa_trunk_link_attr_s** %7, align 8
  %101 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %102 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %101, i32 0, i32 2
  %103 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %103, i64 %105
  store %struct.bfi_fcport_trunk_link_s* %106, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %107 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %108 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %111 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %113 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %116 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %118 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %121 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %123 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %126 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  %127 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %128 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @be32_to_cpu(i32 %129)
  %131 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %132 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %134 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @BFA_TRUNK_LINK_STATE_UP, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %93
  %139 = load %struct.bfi_fcport_trunk_link_s*, %struct.bfi_fcport_trunk_link_s** %6, align 8
  %140 = getelementptr inbounds %struct.bfi_fcport_trunk_link_s, %struct.bfi_fcport_trunk_link_s* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %143 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @BFA_PORT_TOPOLOGY_P2P, align 4
  %145 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %146 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = shl i32 1, %147
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %138, %93
  %152 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %153 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %156 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @bfa_trc(%struct.TYPE_6__* %154, i64 %157)
  %159 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %160 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %163 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @bfa_trc(%struct.TYPE_6__* %161, i64 %164)
  %166 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %167 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %170 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @bfa_trc(%struct.TYPE_6__* %168, i64 %171)
  %173 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %174 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %177 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @bfa_trc(%struct.TYPE_6__* %175, i64 %178)
  %180 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %181 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.bfa_trunk_link_attr_s*, %struct.bfa_trunk_link_attr_s** %7, align 8
  %184 = getelementptr inbounds %struct.bfa_trunk_link_attr_s, %struct.bfa_trunk_link_attr_s* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @bfa_trc(%struct.TYPE_6__* %182, i64 %185)
  br label %187

187:                                              ; preds = %151
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %89

190:                                              ; preds = %89
  %191 = load i32, i32* %10, align 4
  switch i32 %191, label %219 [
    i32 3, label %192
    i32 2, label %201
    i32 1, label %210
  ]

192:                                              ; preds = %190
  %193 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %194 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %193, i32 0, i32 1
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %199 = load i32, i32* @BFA_PL_EID_TRUNK_SCN, align 4
  %200 = call i32 @bfa_plog_str(i32 %197, i32 %198, i32 %199, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %228

201:                                              ; preds = %190
  %202 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %203 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %208 = load i32, i32* @BFA_PL_EID_TRUNK_SCN, align 4
  %209 = call i32 @bfa_plog_str(i32 %206, i32 %207, i32 %208, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %228

210:                                              ; preds = %190
  %211 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %212 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %211, i32 0, i32 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %217 = load i32, i32* @BFA_PL_EID_TRUNK_SCN, align 4
  %218 = call i32 @bfa_plog_str(i32 %215, i32 %216, i32 %217, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %228

219:                                              ; preds = %190
  %220 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %221 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %226 = load i32, i32* @BFA_PL_EID_TRUNK_SCN, align 4
  %227 = call i32 @bfa_plog_str(i32 %224, i32 %225, i32 %226, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %228

228:                                              ; preds = %219, %210, %201, %192
  %229 = load i32, i32* %8, align 4
  %230 = zext i32 %229 to i64
  %231 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %5, align 8
  %232 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %230, %234
  br i1 %235, label %242, label %236

236:                                              ; preds = %228
  %237 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %238 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @BFA_TRUNK_OFFLINE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %236, %228
  %243 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %244 = load %struct.bfi_fcport_trunk_scn_s*, %struct.bfi_fcport_trunk_scn_s** %4, align 8
  %245 = getelementptr inbounds %struct.bfi_fcport_trunk_scn_s, %struct.bfi_fcport_trunk_scn_s* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @BFA_TRUNK_ONLINE, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* @BFA_PORT_LINKUP, align 4
  br label %253

251:                                              ; preds = %242
  %252 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = load i32, i32* @BFA_TRUE, align 4
  %256 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %243, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %236
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bfa_fcport_scn(%struct.bfa_fcport_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
