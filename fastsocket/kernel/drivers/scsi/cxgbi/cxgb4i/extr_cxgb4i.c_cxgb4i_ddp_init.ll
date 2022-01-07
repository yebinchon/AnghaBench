; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_cxgb4i_ddp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_cxgb4i_ddp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.cxgbi_ddp_info* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.cxgbi_ddp_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cxgb4_lld_info = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"cdev 0x%p, ddp 0x%p already set up.\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@PPOD_IDX_SHIFT = common dso_local global i32 0, align 4
@ddp_setup_conn_digest = common dso_local global i32 0, align 4
@ddp_setup_conn_pgidx = common dso_local global i32 0, align 4
@ddp_set_map = common dso_local global i32 0, align 4
@ddp_clear_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cxgb4i 0x%p tag: sw %u, rsvd %u,%u, mask 0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"cxgb4i 0x%p, nppods %u, bits %u, mask 0x%x,0x%x pkt %u/%u,  %u/%u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"cxgb4i 0x%p max payload size: %u/%u, %u/%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_device*)* @cxgb4i_ddp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4i_ddp_init(%struct.cxgbi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.cxgb4_lld_info*, align 8
  %5 = alloca %struct.cxgbi_ddp_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  %9 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %10 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %9)
  store %struct.cxgb4_lld_info* %10, %struct.cxgb4_lld_info** %4, align 8
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %12 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %11, i32 0, i32 7
  %13 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %12, align 8
  store %struct.cxgbi_ddp_info* %13, %struct.cxgbi_ddp_info** %5, align 8
  %14 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %15 = icmp ne %struct.cxgbi_ddp_info* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %18 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %17, i32 0, i32 6
  %19 = call i32 @kref_get(i32* %18)
  %20 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %21 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %22 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %21, i32 0, i32 7
  %23 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %22, align 8
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %20, %struct.cxgbi_ddp_info* %23)
  %25 = load i32, i32* @EALREADY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %149

27:                                               ; preds = %1
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %29 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %30 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %36 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %42 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %40, %46
  %48 = sub nsw i64 %47, 1
  %49 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %50 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %53 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cxgbi_ddp_init(%struct.cxgbi_device* %28, i64 %34, i64 %48, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %27
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %149

60:                                               ; preds = %27
  %61 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %62 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %61, i32 0, i32 7
  %63 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %62, align 8
  store %struct.cxgbi_ddp_info* %63, %struct.cxgbi_ddp_info** %5, align 8
  %64 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %65 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = call i32 @cxgbi_ddp_page_size_factor(i32* %69)
  %71 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %72 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %78 = call i32 @cxgb4_iscsi_init(i32 %75, i32 %76, i32* %77)
  %79 = load i32, i32* @ddp_setup_conn_digest, align 4
  %80 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %81 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ddp_setup_conn_pgidx, align 4
  %83 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %84 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @ddp_set_map, align 4
  %86 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %87 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ddp_clear_map, align 4
  %89 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %90 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %92 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %93 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %97 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %101 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %105 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, %struct.cxgbi_device*, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %91, i32 %95, i32 %99, i32 %103, i32 %107)
  %109 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %110 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %111 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %114 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %117 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %120 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %123 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %126 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %129 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %132 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i8*, %struct.cxgbi_device*, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_device* %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %136 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %137 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %140 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %143 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %5, align 8
  %146 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, %struct.cxgbi_device*, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_device* %135, i32 %138, i32 %141, i32 %144, i32 %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %60, %58, %16
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @pr_warn(i8*, %struct.cxgbi_device*, %struct.cxgbi_ddp_info*) #1

declare dso_local i32 @cxgbi_ddp_init(%struct.cxgbi_device*, i64, i64, i32, i32) #1

declare dso_local i32 @cxgbi_ddp_page_size_factor(i32*) #1

declare dso_local i32 @cxgb4_iscsi_init(i32, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
