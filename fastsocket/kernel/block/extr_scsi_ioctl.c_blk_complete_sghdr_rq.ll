; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_blk_complete_sghdr_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_blk_complete_sghdr_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i64, i32 }
%struct.sg_io_hdr = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { i32 }

@SG_INFO_CHECK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.sg_io_hdr*, %struct.bio*)* @blk_complete_sghdr_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_complete_sghdr_rq(%struct.request* %0, %struct.sg_io_hdr* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 255
  %14 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @status_byte(i32 %18)
  %20 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @msg_byte(i32 %24)
  %26 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @host_byte(i32 %30)
  %32 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @driver_byte(i32 %36)
  %38 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %40, i32 0, i32 5
  store i32 0, i32* %41, align 4
  %42 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %3
  %47 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51, %46, %3
  %57 = load i32, i32* @SG_INFO_CHECK, align 4
  %58 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.request*, %struct.request** %4, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %67 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %69 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.request*, %struct.request** %4, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %62
  %75 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %81 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.request*, %struct.request** %4, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @min(i32 %83, i64 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %89 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.request*, %struct.request** %4, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @copy_to_user(i64 %90, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %79
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %100 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %104

101:                                              ; preds = %79
  %102 = load i32, i32* @EFAULT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %74, %62
  %106 = load %struct.bio*, %struct.bio** %6, align 8
  %107 = call i32 @blk_rq_unmap_user(%struct.bio* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %105
  %113 = load %struct.request*, %struct.request** %4, align 8
  %114 = call i32 @blk_put_request(%struct.request* %113)
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @msg_byte(i32) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @copy_to_user(i64, i32, i32) #1

declare dso_local i32 @blk_rq_unmap_user(%struct.bio*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
