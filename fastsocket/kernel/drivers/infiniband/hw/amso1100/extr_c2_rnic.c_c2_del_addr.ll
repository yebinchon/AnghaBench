; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_del_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_del_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.c2_vq_req = type { i64 }
%struct.c2wr_rnic_setconfig_req = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.c2wr_rnic_setconfig_rep = type { i32 }
%struct.c2_netaddr = type { i64, i8*, i8* }
%union.c2wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CCWR_RNIC_SETCONFIG = common dso_local global i32 0, align 4
@C2_CFG_DEL_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_del_addr(%struct.c2_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.c2_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c2_vq_req*, align 8
  %9 = alloca %struct.c2wr_rnic_setconfig_req*, align 8
  %10 = alloca %struct.c2wr_rnic_setconfig_rep*, align 8
  %11 = alloca %struct.c2_netaddr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %15 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %14)
  store %struct.c2_vq_req* %15, %struct.c2_vq_req** %8, align 8
  %16 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %17 = icmp ne %struct.c2_vq_req* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %3
  store i32 24, i32* %13, align 4
  %22 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %23 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.c2wr_rnic_setconfig_req* @kmalloc(i32 %25, i32 %26)
  store %struct.c2wr_rnic_setconfig_req* %27, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %28 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %29 = icmp ne %struct.c2wr_rnic_setconfig_req* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %100

33:                                               ; preds = %21
  %34 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %35 = load i32, i32* @CCWR_RNIC_SETCONFIG, align 4
  %36 = call i32 @c2_wr_set_id(%struct.c2wr_rnic_setconfig_req* %34, i32 %35)
  %37 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %38 = ptrtoint %struct.c2_vq_req* %37 to i64
  %39 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %40 = getelementptr inbounds %struct.c2wr_rnic_setconfig_req, %struct.c2wr_rnic_setconfig_req* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %43 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %46 = getelementptr inbounds %struct.c2wr_rnic_setconfig_req, %struct.c2wr_rnic_setconfig_req* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @C2_CFG_DEL_ADDR, align 4
  %48 = call i32 @cpu_to_be32(i32 %47)
  %49 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %50 = getelementptr inbounds %struct.c2wr_rnic_setconfig_req, %struct.c2wr_rnic_setconfig_req* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds %struct.c2_netaddr, %struct.c2_netaddr* %11, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds %struct.c2_netaddr, %struct.c2_netaddr* %11, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.c2_netaddr, %struct.c2_netaddr* %11, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %57 = getelementptr inbounds %struct.c2wr_rnic_setconfig_req, %struct.c2wr_rnic_setconfig_req* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @memcpy(i32 %58, %struct.c2_netaddr* %11, i32 %59)
  %61 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %62 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %63 = call i32 @vq_req_get(%struct.c2_dev* %61, %struct.c2_vq_req* %62)
  %64 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %65 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %66 = bitcast %struct.c2wr_rnic_setconfig_req* %65 to %union.c2wr*
  %67 = call i32 @vq_send_wr(%struct.c2_dev* %64, %union.c2wr* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %33
  %71 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %72 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %73 = call i32 @vq_req_put(%struct.c2_dev* %71, %struct.c2_vq_req* %72)
  br label %97

74:                                               ; preds = %33
  %75 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %76 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %77 = call i32 @vq_wait_for_reply(%struct.c2_dev* %75, %struct.c2_vq_req* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %97

81:                                               ; preds = %74
  %82 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %83 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.c2wr_rnic_setconfig_rep*
  store %struct.c2wr_rnic_setconfig_rep* %85, %struct.c2wr_rnic_setconfig_rep** %10, align 8
  %86 = load %struct.c2wr_rnic_setconfig_rep*, %struct.c2wr_rnic_setconfig_rep** %10, align 8
  %87 = icmp ne %struct.c2wr_rnic_setconfig_rep* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %97

91:                                               ; preds = %81
  %92 = load %struct.c2wr_rnic_setconfig_rep*, %struct.c2wr_rnic_setconfig_rep** %10, align 8
  %93 = call i32 @c2_errno(%struct.c2wr_rnic_setconfig_rep* %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %95 = load %struct.c2wr_rnic_setconfig_rep*, %struct.c2wr_rnic_setconfig_rep** %10, align 8
  %96 = call i32 @vq_repbuf_free(%struct.c2_dev* %94, %struct.c2wr_rnic_setconfig_rep* %95)
  br label %97

97:                                               ; preds = %91, %88, %80, %70
  %98 = load %struct.c2wr_rnic_setconfig_req*, %struct.c2wr_rnic_setconfig_req** %9, align 8
  %99 = call i32 @kfree(%struct.c2wr_rnic_setconfig_req* %98)
  br label %100

100:                                              ; preds = %97, %30
  %101 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %102 = load %struct.c2_vq_req*, %struct.c2_vq_req** %8, align 8
  %103 = call i32 @vq_req_free(%struct.c2_dev* %101, %struct.c2_vq_req* %102)
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local %struct.c2wr_rnic_setconfig_req* @kmalloc(i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_rnic_setconfig_req*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, %struct.c2_netaddr*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_rnic_setconfig_rep*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_rnic_setconfig_rep*) #1

declare dso_local i32 @kfree(%struct.c2wr_rnic_setconfig_req*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
