; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_ss_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_ss_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i32, i32, i32, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.scsi_cmnd*, %struct.req_msg* }
%struct.scsi_cmnd = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.req_msg = type { i8* }
%struct.st_msg_header = type { i32, i8*, i64 }

@HZ = common dso_local global i64 0, align 8
@YH2I_REQ_HI = common dso_local global i64 0, align 8
@YH2I_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*, %struct.req_msg*, i64)* @stex_ss_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_ss_send_cmd(%struct.st_hba* %0, %struct.req_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.st_hba*, align 8
  %5 = alloca %struct.req_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.st_msg_header*, align 8
  %9 = alloca i32, align 4
  store %struct.st_hba* %0, %struct.st_hba** %4, align 8
  store %struct.req_msg* %1, %struct.req_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i8* @cpu_to_le16(i64 %10)
  %12 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %13 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %15 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %16 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store %struct.req_msg* %14, %struct.req_msg** %20, align 8
  %21 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %22 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %26 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %25, i32 0, i32 5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %30, align 8
  store %struct.scsi_cmnd* %31, %struct.scsi_cmnd** %7, align 8
  %32 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %33 = bitcast %struct.req_msg* %32 to %struct.st_msg_header*
  %34 = getelementptr inbounds %struct.st_msg_header, %struct.st_msg_header* %33, i64 -1
  store %struct.st_msg_header* %34, %struct.st_msg_header** %8, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %36 = call i64 @likely(%struct.scsi_cmnd* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %3
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.st_msg_header*, %struct.st_msg_header** %8, align 8
  %45 = getelementptr inbounds %struct.st_msg_header, %struct.st_msg_header* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HZ, align 8
  %52 = udiv i64 %50, %51
  %53 = call i8* @cpu_to_le16(i64 %52)
  %54 = load %struct.st_msg_header*, %struct.st_msg_header** %8, align 8
  %55 = getelementptr inbounds %struct.st_msg_header, %struct.st_msg_header* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %38, %3
  %57 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %58 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %61 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %64 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = add nsw i32 %59, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %69 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 4
  %76 = sdiv i32 %75, 11
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @cpu_to_le64(i32 %79)
  %81 = load %struct.st_msg_header*, %struct.st_msg_header** %8, align 8
  %82 = getelementptr inbounds %struct.st_msg_header, %struct.st_msg_header* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %84 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %88 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %92 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %9, align 4
  %96 = ashr i32 %95, 16
  %97 = ashr i32 %96, 16
  %98 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %99 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @YH2I_REQ_HI, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %105 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @YH2I_REQ_HI, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %112 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @YH2I_REQ, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load %struct.st_hba*, %struct.st_hba** %4, align 8
  %118 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @YH2I_REQ, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @readl(i64 %121)
  ret void
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @likely(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
