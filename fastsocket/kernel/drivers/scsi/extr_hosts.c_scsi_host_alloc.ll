; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hosts.c_scsi_host_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hosts.c_scsi_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32, %struct.scsi_host_template*, i32, i64, %struct.TYPE_3__, %struct.TYPE_3__, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32*, %struct.TYPE_3__*, i32*, i32* }
%struct.scsi_host_template = type { i64, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@SHOST_CREATED = common dso_local global i32 0, align 4
@scsi_host_next_hn = common dso_local global i32 0, align 4
@blank_transport_template = common dso_local global i32 0, align 4
@shost_eh_deadline = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MODE_UNKNOWN = common dso_local global i64 0, align 8
@MODE_INITIATOR = common dso_local global i64 0, align 8
@SCSI_DEFAULT_HOST_BLOCKED = common dso_local global i64 0, align 8
@SCSI_DEFAULT_MAX_SECTORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@scsi_bus_type = common dso_local global i32 0, align 4
@scsi_host_type = common dso_local global i32 0, align 4
@shost_class = common dso_local global i32 0, align 4
@scsi_sysfs_shost_attr_groups = common dso_local global i32 0, align 4
@scsi_error_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"scsi_eh_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_host_template*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @__GFP_DMA, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %14, %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 256, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.Scsi_Host* @kzalloc(i32 %25, i32 %26)
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %6, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %29 = icmp ne %struct.Scsi_Host* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %3, align 8
  br label %243

31:                                               ; preds = %21
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 31
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 30
  store i32* %33, i32** %35, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 30
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load i32, i32* @SHOST_CREATED, align 4
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 29
  store i32 %40, i32* %42, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 28
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 27
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 26
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 25
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 24
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 23
  %60 = call i32 @mutex_init(i32* %59)
  %61 = call i64 @atomic_inc_return(i32* @scsi_host_next_hn)
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  store i32 255, i32* %66, align 8
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 22
  store i64 0, i64* %68, align 8
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 1
  store i32 8, i32* %70, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 2
  store i32 8, i32* %72, align 8
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 21
  store i32* @blank_transport_template, i32** %74, align 8
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 3
  store i32 12, i32* %76, align 4
  %77 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 7
  store %struct.scsi_host_template* %77, %struct.scsi_host_template** %79, align 8
  %80 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 20
  store i32 %82, i32* %84, align 4
  %85 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 19
  store i32 %87, i32* %89, align 8
  %90 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 18
  store i32 %92, i32* %94, align 4
  %95 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %96 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %99 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %98, i32 0, i32 17
  store i32 %97, i32* %99, align 8
  %100 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %104 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %103, i32 0, i32 16
  store i64 %102, i64* %104, align 8
  %105 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %106 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %109 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %108, i32 0, i32 15
  store i32 %107, i32* %109, align 4
  %110 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %111 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 14
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @shost_eh_deadline, align 4
  %116 = load i32, i32* @HZ, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %119 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %121 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MODE_UNKNOWN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %31
  %126 = load i64, i64* @MODE_INITIATOR, align 8
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %128 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  br label %135

129:                                              ; preds = %31
  %130 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %131 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %134 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %125
  %136 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %145 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %144, i32 0, i32 13
  store i64 %143, i64* %145, align 8
  br label %150

146:                                              ; preds = %135
  %147 = load i64, i64* @SCSI_DEFAULT_HOST_BLOCKED, align 8
  %148 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %149 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %148, i32 0, i32 13
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %140
  %151 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %152 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %157 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %160 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %159, i32 0, i32 12
  store i64 %158, i64* %160, align 8
  br label %165

161:                                              ; preds = %150
  %162 = load i64, i64* @SCSI_DEFAULT_MAX_SECTORS, align 8
  %163 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %164 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %163, i32 0, i32 12
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %167 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %172 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %175 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 8
  br label %179

176:                                              ; preds = %165
  %177 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %178 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %177, i32 0, i32 6
  store i32 -1, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %170
  %180 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %181 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %180, i32 0, i32 11
  %182 = call i32 @device_initialize(%struct.TYPE_3__* %181)
  %183 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %184 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %183, i32 0, i32 11
  %185 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %186 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %185, i32 0, i32 9
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @dev_set_name(%struct.TYPE_3__* %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %187)
  %189 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %190 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %189, i32 0, i32 11
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 4
  store i32* @scsi_bus_type, i32** %191, align 8
  %192 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %193 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %192, i32 0, i32 11
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  store i32* @scsi_host_type, i32** %194, align 8
  %195 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %196 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %195, i32 0, i32 10
  %197 = call i32 @device_initialize(%struct.TYPE_3__* %196)
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %199 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %198, i32 0, i32 11
  %200 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %201 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %200, i32 0, i32 10
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  store %struct.TYPE_3__* %199, %struct.TYPE_3__** %202, align 8
  %203 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %204 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %203, i32 0, i32 10
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  store i32* @shost_class, i32** %205, align 8
  %206 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %207 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %206, i32 0, i32 10
  %208 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %209 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @dev_set_name(%struct.TYPE_3__* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %210)
  %212 = load i32, i32* @scsi_sysfs_shost_attr_groups, align 4
  %213 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %214 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %213, i32 0, i32 10
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  %216 = load i32, i32* @scsi_error_handler, align 4
  %217 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %218 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %219 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %218, i32 0, i32 9
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @kthread_run(i32 %216, %struct.Scsi_Host* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %220)
  %222 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %223 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 8
  %224 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %225 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @IS_ERR(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %179
  %230 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %231 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @PTR_ERR(i32 %232)
  store i32 %233, i32* %8, align 4
  br label %240

234:                                              ; preds = %179
  %235 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %236 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %235, i32 0, i32 7
  %237 = load %struct.scsi_host_template*, %struct.scsi_host_template** %236, align 8
  %238 = call i32 @scsi_proc_hostdir_add(%struct.scsi_host_template* %237)
  %239 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  store %struct.Scsi_Host* %239, %struct.Scsi_Host** %3, align 8
  br label %243

240:                                              ; preds = %229
  %241 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %242 = call i32 @kfree(%struct.Scsi_Host* %241)
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %3, align 8
  br label %243

243:                                              ; preds = %240, %234, %30
  %244 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  ret %struct.Scsi_Host* %244
}

declare dso_local %struct.Scsi_Host* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i32 @kthread_run(i32, %struct.Scsi_Host*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @scsi_proc_hostdir_add(%struct.scsi_host_template*) #1

declare dso_local i32 @kfree(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
