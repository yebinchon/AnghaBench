; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_expander.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__, i32, %struct.asd_sas_port*, i32, i32, i32, i32, i32, %struct.domain_device*, i32, %struct.sas_rphy* }
%struct.TYPE_4__ = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.asd_sas_port = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sas_rphy = type { i32 }
%struct.sas_expander_device = type { i64 }

@DIRECT_ROUTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"ex %016llx:0x%x:D <--> ex %016llx:0x%x is not allowed\0A\00", align 1
@SAS_EDGE_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.domain_device* (%struct.domain_device*, i32)* @sas_ex_discover_expander to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.domain_device* @sas_ex_discover_expander(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_expander_device*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.sas_rphy*, align 8
  %10 = alloca %struct.sas_expander_device*, align 8
  %11 = alloca %struct.asd_sas_port*, align 8
  %12 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 11
  %15 = load %struct.sas_rphy*, %struct.sas_rphy** %14, align 8
  %16 = call %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy* %15)
  store %struct.sas_expander_device* %16, %struct.sas_expander_device** %6, align 8
  %17 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.ex_phy*, %struct.ex_phy** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %20, i64 %22
  store %struct.ex_phy* %23, %struct.ex_phy** %7, align 8
  store %struct.domain_device* null, %struct.domain_device** %8, align 8
  %24 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %25 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DIRECT_ROUTING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %31 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SAS_ADDR(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %36 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SAS_ADDR(i32 %37)
  %39 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %40 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %38, i32 %41)
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %211

43:                                               ; preds = %2
  %44 = call %struct.domain_device* (...) @sas_alloc_device()
  store %struct.domain_device* %44, %struct.domain_device** %8, align 8
  %45 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %46 = icmp ne %struct.domain_device* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %211

48:                                               ; preds = %43
  %49 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 11
  %51 = load %struct.sas_rphy*, %struct.sas_rphy** %50, align 8
  %52 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @sas_port_alloc(i32* %52, i32 %53)
  %55 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %56 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %58 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @sas_port_add(i32 %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %79 [
    i32 129, label %67
    i32 128, label %73
  ]

67:                                               ; preds = %48
  %68 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %69 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SAS_EDGE_EXPANDER_DEVICE, align 4
  %72 = call %struct.sas_rphy* @sas_expander_alloc(i32 %70, i32 %71)
  store %struct.sas_rphy* %72, %struct.sas_rphy** %9, align 8
  br label %81

73:                                               ; preds = %48
  %74 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %75 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SAS_FANOUT_EXPANDER_DEVICE, align 4
  %78 = call %struct.sas_rphy* @sas_expander_alloc(i32 %76, i32 %77)
  store %struct.sas_rphy* %78, %struct.sas_rphy** %9, align 8
  br label %81

79:                                               ; preds = %48
  store %struct.sas_rphy* null, %struct.sas_rphy** %9, align 8
  %80 = call i32 (...) @BUG()
  br label %81

81:                                               ; preds = %79, %73, %67
  %82 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %83 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %82, i32 0, i32 3
  %84 = load %struct.asd_sas_port*, %struct.asd_sas_port** %83, align 8
  store %struct.asd_sas_port* %84, %struct.asd_sas_port** %11, align 8
  %85 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %86 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %87 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %86, i32 0, i32 11
  store %struct.sas_rphy* %85, %struct.sas_rphy** %87, align 8
  %88 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %89 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %88, i32 0, i32 0
  %90 = call i32 @get_device(i32* %89)
  %91 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %92 = call %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy* %91)
  store %struct.sas_expander_device* %92, %struct.sas_expander_device** %10, align 8
  %93 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %94 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %97 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %99 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %98, i32 0, i32 10
  %100 = call i32 @kref_get(i32* %99)
  %101 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %102 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %103 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %102, i32 0, i32 9
  store %struct.domain_device* %101, %struct.domain_device** %103, align 8
  %104 = load %struct.asd_sas_port*, %struct.asd_sas_port** %11, align 8
  %105 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %106 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %105, i32 0, i32 3
  store %struct.asd_sas_port* %104, %struct.asd_sas_port** %106, align 8
  %107 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %108 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %111 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %113 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %116 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %118 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %121 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %124 = call i32 @memcpy(i32 %119, i32 %122, i32 %123)
  %125 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %126 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %129 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sas_hash_addr(i32 %127, i32 %130)
  %132 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %133 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %134 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %135 = call i32 @sas_ex_get_linkrate(%struct.domain_device* %132, %struct.domain_device* %133, %struct.ex_phy* %134)
  %136 = load %struct.sas_expander_device*, %struct.sas_expander_device** %6, align 8
  %137 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  %140 = load %struct.sas_expander_device*, %struct.sas_expander_device** %10, align 8
  %141 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %143 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %142, i32 0, i32 3
  %144 = load %struct.asd_sas_port*, %struct.asd_sas_port** %143, align 8
  %145 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sas_expander_device*, %struct.sas_expander_device** %10, align 8
  %149 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @max(i32 %147, i64 %150)
  %152 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %153 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %152, i32 0, i32 3
  %154 = load %struct.asd_sas_port*, %struct.asd_sas_port** %153, align 8
  %155 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 4
  %157 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %158 = call i32 @sas_init_dev(%struct.domain_device* %157)
  %159 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %160 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %161 = call i32 @sas_fill_in_rphy(%struct.domain_device* %159, %struct.sas_rphy* %160)
  %162 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %163 = call i32 @sas_rphy_add(%struct.sas_rphy* %162)
  %164 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %165 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %164, i32 0, i32 3
  %166 = load %struct.asd_sas_port*, %struct.asd_sas_port** %165, align 8
  %167 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %166, i32 0, i32 0
  %168 = call i32 @spin_lock_irq(i32* %167)
  %169 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %170 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %169, i32 0, i32 4
  %171 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %172 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %171, i32 0, i32 3
  %173 = load %struct.asd_sas_port*, %struct.asd_sas_port** %172, align 8
  %174 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %173, i32 0, i32 1
  %175 = call i32 @list_add_tail(i32* %170, i32* %174)
  %176 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %177 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %176, i32 0, i32 3
  %178 = load %struct.asd_sas_port*, %struct.asd_sas_port** %177, align 8
  %179 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %178, i32 0, i32 0
  %180 = call i32 @spin_unlock_irq(i32* %179)
  %181 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %182 = call i32 @sas_discover_expander(%struct.domain_device* %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %81
  %186 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %187 = call i32 @sas_rphy_delete(%struct.sas_rphy* %186)
  %188 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %189 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %188, i32 0, i32 3
  %190 = load %struct.asd_sas_port*, %struct.asd_sas_port** %189, align 8
  %191 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %190, i32 0, i32 0
  %192 = call i32 @spin_lock_irq(i32* %191)
  %193 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %194 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %193, i32 0, i32 4
  %195 = call i32 @list_del(i32* %194)
  %196 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %197 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %196, i32 0, i32 3
  %198 = load %struct.asd_sas_port*, %struct.asd_sas_port** %197, align 8
  %199 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %198, i32 0, i32 0
  %200 = call i32 @spin_unlock_irq(i32* %199)
  %201 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %202 = call i32 @sas_put_device(%struct.domain_device* %201)
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %211

203:                                              ; preds = %81
  %204 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %205 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %204, i32 0, i32 2
  %206 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %207 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = call i32 @list_add_tail(i32* %205, i32* %208)
  %210 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  store %struct.domain_device* %210, %struct.domain_device** %3, align 8
  br label %211

211:                                              ; preds = %203, %185, %47, %29
  %212 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  ret %struct.domain_device* %212
}

declare dso_local %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy*) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local %struct.domain_device* @sas_alloc_device(...) #1

declare dso_local i32 @sas_port_alloc(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @sas_port_add(i32) #1

declare dso_local %struct.sas_rphy* @sas_expander_alloc(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sas_hash_addr(i32, i32) #1

declare dso_local i32 @sas_ex_get_linkrate(%struct.domain_device*, %struct.domain_device*, %struct.ex_phy*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @sas_init_dev(%struct.domain_device*) #1

declare dso_local i32 @sas_fill_in_rphy(%struct.domain_device*, %struct.sas_rphy*) #1

declare dso_local i32 @sas_rphy_add(%struct.sas_rphy*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sas_discover_expander(%struct.domain_device*) #1

declare dso_local i32 @sas_rphy_delete(%struct.sas_rphy*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sas_put_device(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
