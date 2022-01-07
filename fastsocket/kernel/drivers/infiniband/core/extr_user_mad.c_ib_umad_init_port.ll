; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_umad_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i8*, i8*, i32, i32, i32, %struct.ib_device* }
%struct.TYPE_4__ = type { i32, i32, i8* }

@port_lock = common dso_local global i32 0, align 4
@dev_map = common dso_local global i32 0, align 4
@IB_UMAD_MAX_PORTS = common dso_local global i32 0, align 4
@overflow_maj = common dso_local global i64 0, align 8
@overflow_map = common dso_local global i32 0, align 4
@base_dev = common dso_local global i64 0, align 8
@umad_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"umad%d\00", align 1
@umad_class = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@dev_attr_port = common dso_local global i32 0, align 4
@umad_sm_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"issm%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_umad_port*)* @ib_umad_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umad_init_port(%struct.ib_device* %0, i32 %1, %struct.ib_umad_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_umad_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_umad_port* %2, %struct.ib_umad_port** %7, align 8
  %10 = call i32 @spin_lock(i32* @port_lock)
  %11 = load i32, i32* @dev_map, align 4
  %12 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %13 = call i32 @find_first_zero_bit(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = call i32 @spin_unlock(i32* @port_lock)
  %19 = call i32 (...) @find_overflow_devnum()
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %219

23:                                               ; preds = %17
  %24 = call i32 @spin_lock(i32* @port_lock)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %29 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @overflow_maj, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @overflow_map, align 4
  %36 = call i32 @set_bit(i32 %34, i32 %35)
  br label %48

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %40 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @base_dev, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @dev_map, align 4
  %47 = call i32 @set_bit(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %23
  %49 = call i32 @spin_unlock(i32* @port_lock)
  %50 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %51 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %52 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %51, i32 0, i32 9
  store %struct.ib_device* %50, %struct.ib_device** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %55 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %57 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %56, i32 0, i32 8
  %58 = call i32 @sema_init(i32* %57, i32 1)
  %59 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %60 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %59, i32 0, i32 7
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %63 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %62, i32 0, i32 6
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %66 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %65, i32 0, i32 2
  %67 = call i32 @cdev_init(%struct.TYPE_4__* %66, i32* @umad_fops)
  %68 = load i8*, i8** @THIS_MODULE, align 8
  %69 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %70 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 8
  %72 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %73 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %76 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @kobject_set_name(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %80 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %79, i32 0, i32 2
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @cdev_add(%struct.TYPE_4__* %80, i64 %81, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %48
  br label %201

85:                                               ; preds = %48
  %86 = load i32, i32* @umad_class, align 4
  %87 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %88 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %91 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %95 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %96 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @device_create(i32 %86, i32 %89, i32 %93, %struct.ib_umad_port* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %100 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %102 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %85
  br label %201

107:                                              ; preds = %85
  %108 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %109 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @device_create_file(i8* %110, i32* @dev_attr_ibdev)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %194

114:                                              ; preds = %107
  %115 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %116 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %115, i32 0, i32 5
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @device_create_file(i8* %117, i32* @dev_attr_port)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %194

121:                                              ; preds = %114
  %122 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %9, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %9, align 8
  %126 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %127 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %126, i32 0, i32 3
  %128 = call i32 @cdev_init(%struct.TYPE_4__* %127, i32* @umad_sm_fops)
  %129 = load i8*, i8** @THIS_MODULE, align 8
  %130 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %131 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i8* %129, i8** %132, align 8
  %133 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %134 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %137 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @kobject_set_name(i32* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %141 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %140, i32 0, i32 3
  %142 = load i64, i64* %9, align 8
  %143 = call i64 @cdev_add(%struct.TYPE_4__* %141, i64 %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %121
  br label %190

146:                                              ; preds = %121
  %147 = load i32, i32* @umad_class, align 4
  %148 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %149 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %152 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %156 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %157 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @device_create(i32 %147, i32 %150, i32 %154, %struct.ib_umad_port* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %161 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %163 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @IS_ERR(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %146
  br label %190

168:                                              ; preds = %146
  %169 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %170 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %169, i32 0, i32 4
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @device_create_file(i8* %171, i32* @dev_attr_ibdev)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %183

175:                                              ; preds = %168
  %176 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %177 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @device_create_file(i8* %178, i32* @dev_attr_port)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %183

182:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %219

183:                                              ; preds = %181, %174
  %184 = load i32, i32* @umad_class, align 4
  %185 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %186 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @device_destroy(i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %183, %167, %145
  %191 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %192 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %191, i32 0, i32 3
  %193 = call i32 @cdev_del(%struct.TYPE_4__* %192)
  br label %194

194:                                              ; preds = %190, %120, %113
  %195 = load i32, i32* @umad_class, align 4
  %196 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %197 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @device_destroy(i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %194, %106, %84
  %202 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %203 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %202, i32 0, i32 2
  %204 = call i32 @cdev_del(%struct.TYPE_4__* %203)
  %205 = load %struct.ib_umad_port*, %struct.ib_umad_port** %7, align 8
  %206 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @dev_map, align 4
  %213 = call i32 @clear_bit(i32 %211, i32 %212)
  br label %218

214:                                              ; preds = %201
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @overflow_map, align 4
  %217 = call i32 @clear_bit(i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %210
  store i32 -1, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %182, %22
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @find_overflow_devnum(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i64 @cdev_add(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i8* @device_create(i32, i32, i32, %struct.ib_umad_port*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @device_create_file(i8*, i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
