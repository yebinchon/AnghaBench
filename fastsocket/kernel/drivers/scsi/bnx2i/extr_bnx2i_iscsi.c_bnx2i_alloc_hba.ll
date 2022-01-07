; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_alloc_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_alloc_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32, i32, i64, i8*, i32, i32 }
%struct.cnic_dev = type { %struct.TYPE_6__*, i32 }

@bnx2i_host_template = common dso_local global i32 0, align 4
@bnx2i_scsi_xport_template = common dso_local global i32 0, align 4
@ISCSI_MAX_CONNS_PER_HBA = common dso_local global i8* null, align 8
@BNX2I_NX2_DEV_5709 = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG2 = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@BNX2I_MAX_MTU_SUPPORTED = common dso_local global i32 0, align 4
@sq_size = common dso_local global i64 0, align 8
@BNX2I_5770X_SQ_WQES_MAX = common dso_local global i64 0, align 8
@BNX2I_5770X_SQ_WQES_DEFAULT = common dso_local global i32 0, align 4
@BNX2I_570X_SQ_WQES_MAX = common dso_local global i64 0, align 8
@BNX2I_570X_SQ_WQES_DEFAULT = common dso_local global i32 0, align 4
@rq_size = common dso_local global i8* null, align 8
@BNX2I_5770X_CQ_WQES_MAX = common dso_local global i64 0, align 8
@BNX2I_570X_CQ_WQES_MAX = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bnx2i_hba* @bnx2i_alloc_hba(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.bnx2i_hba*, align 8
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.bnx2i_hba*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %6 = call %struct.Scsi_Host* @iscsi_host_alloc(i32* @bnx2i_host_template, i32 152, i32 0)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %4, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = icmp ne %struct.Scsi_Host* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.bnx2i_hba* null, %struct.bnx2i_hba** %2, align 8
  br label %344

10:                                               ; preds = %1
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @bnx2i_scsi_xport_template, align 4
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @ISCSI_MAX_CONNS_PER_HBA, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  store i32 512, i32* %27, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 1
  store i32 16, i32* %29, align 4
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %31 = call %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host* %30)
  store %struct.bnx2i_hba* %31, %struct.bnx2i_hba** %5, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %34 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %33, i32 0, i32 29
  store %struct.Scsi_Host* %32, %struct.Scsi_Host** %34, align 8
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %36 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %38, i32 0, i32 28
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %41 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %43, i32 0, i32 6
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @pci_dev_get(%struct.TYPE_6__* %47)
  %49 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %50 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %49, i32 0, i32 6
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %55 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %54, i32 0, i32 27
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %56, i32 0, i32 6
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %62 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %61, i32 0, i32 26
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %63, i32 0, i32 6
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %69 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %68, i32 0, i32 25
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %71 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %75, i32 0, i32 24
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %77, i32 0, i32 6
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PCI_FUNC(i32 %81)
  %83 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %83, i32 0, i32 23
  store i32 %82, i32* %84, align 4
  %85 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %86 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %85, i32 0, i32 6
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PCI_SLOT(i32 %89)
  %91 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %92 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %91, i32 0, i32 22
  store i32 %90, i32* %92, align 8
  %93 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %94 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %95 = call i32 @bnx2i_identify_device(%struct.bnx2i_hba* %93, %struct.cnic_dev* %94)
  %96 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %98 = call i32 @bnx2i_setup_host_queue_size(%struct.bnx2i_hba* %96, %struct.Scsi_Host* %97)
  %99 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %100 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %99, i32 0, i32 6
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @pci_resource_start(%struct.TYPE_6__* %101, i32 0)
  %103 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %104 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %103, i32 0, i32 21
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @BNX2I_NX2_DEV_5709, align 4
  %106 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %107 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %106, i32 0, i32 10
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %10
  %111 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %112 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %111, i32 0, i32 6
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* @BNX2_MQ_CONFIG2, align 4
  %115 = call i8* @pci_iomap(%struct.TYPE_6__* %113, i32 0, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %118 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %117, i32 0, i32 7
  store i32* %116, i32** %118, align 8
  %119 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %120 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %119, i32 0, i32 7
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %110
  br label %337

124:                                              ; preds = %110
  br label %146

125:                                              ; preds = %10
  %126 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %127 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %128 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %127, i32 0, i32 10
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %133 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %132, i32 0, i32 6
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = call i8* @pci_iomap(%struct.TYPE_6__* %134, i32 0, i32 4096)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %138 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %137, i32 0, i32 7
  store i32* %136, i32** %138, align 8
  %139 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %140 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %131
  br label %337

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %125
  br label %146

146:                                              ; preds = %145, %124
  %147 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %148 = call i64 @bnx2i_setup_mp_bdt(%struct.bnx2i_hba* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %321

151:                                              ; preds = %146
  %152 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %153 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %152, i32 0, i32 20
  %154 = call i32 @INIT_LIST_HEAD(i32* %153)
  %155 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %156 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %155, i32 0, i32 19
  %157 = call i32 @INIT_LIST_HEAD(i32* %156)
  %158 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %159 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %158, i32 0, i32 18
  %160 = call i32 @INIT_LIST_HEAD(i32* %159)
  %161 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %162 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %161, i32 0, i32 17
  %163 = call i32 @rwlock_init(i32* %162)
  %164 = load i32, i32* @BNX2I_MAX_MTU_SUPPORTED, align 4
  %165 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %166 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %165, i32 0, i32 16
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** @ISCSI_MAX_CONNS_PER_HBA, align 8
  %168 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %169 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %168, i32 0, i32 15
  store i8* %167, i8** %169, align 8
  %170 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %171 = call i64 @bnx2i_setup_free_cid_que(%struct.bnx2i_hba* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %151
  br label %318

174:                                              ; preds = %151
  %175 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %176 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %177 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %176, i32 0, i32 10
  %178 = call i64 @test_bit(i32 %175, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = load i64, i64* @sq_size, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i64, i64* @sq_size, align 8
  %185 = load i64, i64* @BNX2I_5770X_SQ_WQES_MAX, align 8
  %186 = icmp sle i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load i64, i64* @sq_size, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %191 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %196

192:                                              ; preds = %183, %180
  %193 = load i32, i32* @BNX2I_5770X_SQ_WQES_DEFAULT, align 4
  %194 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %195 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %187
  br label %214

197:                                              ; preds = %174
  %198 = load i64, i64* @sq_size, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i64, i64* @sq_size, align 8
  %202 = load i64, i64* @BNX2I_570X_SQ_WQES_MAX, align 8
  %203 = icmp sle i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i64, i64* @sq_size, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %208 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  br label %213

209:                                              ; preds = %200, %197
  %210 = load i32, i32* @BNX2I_570X_SQ_WQES_DEFAULT, align 4
  %211 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %212 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %209, %204
  br label %214

214:                                              ; preds = %213, %196
  %215 = load i8*, i8** @rq_size, align 8
  %216 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %217 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %216, i32 0, i32 14
  store i8* %215, i8** %217, align 8
  %218 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %219 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i8*, i8** @rq_size, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr i8, i8* %221, i64 %222
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %226 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %228 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %229 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %228, i32 0, i32 10
  %230 = call i64 @test_bit(i32 %227, i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %214
  %233 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %234 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @BNX2I_5770X_CQ_WQES_MAX, align 8
  %237 = icmp sgt i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i64, i64* @BNX2I_5770X_CQ_WQES_MAX, align 8
  %240 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %241 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %240, i32 0, i32 1
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %238, %232
  br label %254

243:                                              ; preds = %214
  %244 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %245 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @BNX2I_570X_CQ_WQES_MAX, align 8
  %248 = icmp sgt i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %243
  %250 = load i64, i64* @BNX2I_570X_CQ_WQES_MAX, align 8
  %251 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %252 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %251, i32 0, i32 1
  store i64 %250, i64* %252, align 8
  br label %253

253:                                              ; preds = %249, %243
  br label %254

254:                                              ; preds = %253, %242
  %255 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %256 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sdiv i32 %257, 2
  %259 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %260 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %262 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %261, i32 0, i32 13
  %263 = call i32 @spin_lock_init(i32* %262)
  %264 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %265 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %264, i32 0, i32 12
  %266 = call i32 @mutex_init(i32* %265)
  %267 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %268 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %267, i32 0, i32 11
  %269 = call i32 @init_waitqueue_head(i32* %268)
  %270 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %271 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %272 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %271, i32 0, i32 10
  %273 = call i64 @test_bit(i32 %270, i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %254
  %276 = load i32, i32* @HZ, align 4
  %277 = mul nsw i32 30, %276
  %278 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %279 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @HZ, align 4
  %281 = mul nsw i32 20, %280
  %282 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %283 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* @HZ, align 4
  %285 = mul nsw i32 6, %284
  %286 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %287 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 4
  br label %301

288:                                              ; preds = %254
  %289 = load i32, i32* @HZ, align 4
  %290 = mul nsw i32 20, %289
  %291 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %292 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 4
  %293 = load i32, i32* @HZ, align 4
  %294 = mul nsw i32 10, %293
  %295 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %296 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %295, i32 0, i32 4
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @HZ, align 4
  %298 = mul nsw i32 2, %297
  %299 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %300 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %288, %275
  %302 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %303 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %302, i32 0, i32 8
  %304 = call i32 @memset(i32* %303, i32 0, i32 4)
  %305 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %306 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %307 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %306, i32 0, i32 6
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = call i64 @iscsi_host_add(%struct.Scsi_Host* %305, i32* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %301
  br label %315

313:                                              ; preds = %301
  %314 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  store %struct.bnx2i_hba* %314, %struct.bnx2i_hba** %2, align 8
  br label %344

315:                                              ; preds = %312
  %316 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %317 = call i32 @bnx2i_release_free_cid_que(%struct.bnx2i_hba* %316)
  br label %318

318:                                              ; preds = %315, %173
  %319 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %320 = call i32 @bnx2i_free_mp_bdt(%struct.bnx2i_hba* %319)
  br label %321

321:                                              ; preds = %318, %150
  %322 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %323 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %322, i32 0, i32 7
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %336

326:                                              ; preds = %321
  %327 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %328 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %327, i32 0, i32 6
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %331 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %330, i32 0, i32 7
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @pci_iounmap(%struct.TYPE_6__* %329, i32* %332)
  %334 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %335 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %334, i32 0, i32 7
  store i32* null, i32** %335, align 8
  br label %336

336:                                              ; preds = %326, %321
  br label %337

337:                                              ; preds = %336, %143, %123
  %338 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %339 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %338, i32 0, i32 6
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = call i32 @pci_dev_put(%struct.TYPE_6__* %340)
  %342 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %343 = call i32 @scsi_host_put(%struct.Scsi_Host* %342)
  store %struct.bnx2i_hba* null, %struct.bnx2i_hba** %2, align 8
  br label %344

344:                                              ; preds = %337, %313, %9
  %345 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  ret %struct.bnx2i_hba* %345
}

declare dso_local %struct.Scsi_Host* @iscsi_host_alloc(i32*, i32, i32) #1

declare dso_local %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_dev_get(%struct.TYPE_6__*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @bnx2i_identify_device(%struct.bnx2i_hba*, %struct.cnic_dev*) #1

declare dso_local i32 @bnx2i_setup_host_queue_size(%struct.bnx2i_hba*, %struct.Scsi_Host*) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @pci_iomap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @bnx2i_setup_mp_bdt(%struct.bnx2i_hba*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i64 @bnx2i_setup_free_cid_que(%struct.bnx2i_hba*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @iscsi_host_add(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @bnx2i_release_free_cid_que(%struct.bnx2i_hba*) #1

declare dso_local i32 @bnx2i_free_mp_bdt(%struct.bnx2i_hba*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_6__*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
