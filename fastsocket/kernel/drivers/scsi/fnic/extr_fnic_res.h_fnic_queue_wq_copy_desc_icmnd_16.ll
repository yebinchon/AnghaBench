; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_icmnd_16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_icmnd_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_host_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i64, i32, i8*, i32, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i64*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@FCPIO_ICMND_16 = common dso_local global i32 0, align 4
@CDB_16 = common dso_local global i32 0, align 4
@LUN_ADDRESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8**, i8*, i32, i8*, i8*)* @fnic_queue_wq_copy_desc_icmnd_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_wq_copy_desc_icmnd_16(%struct.vnic_wq_copy* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8** %11, i8* %12, i8* %13, i8** %14, i8* %15, i32 %16, i8* %17, i8* %18) #0 {
  %20 = alloca %struct.vnic_wq_copy*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8**, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8**, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca %struct.fcpio_host_req*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %20, align 8
  store i8* %1, i8** %21, align 8
  store i8* %2, i8** %22, align 8
  store i8* %3, i8** %23, align 8
  store i8* %4, i8** %24, align 8
  store i8* %5, i8** %25, align 8
  store i8* %6, i8** %26, align 8
  store i8* %7, i8** %27, align 8
  store i8* %8, i8** %28, align 8
  store i8* %9, i8** %29, align 8
  store i8* %10, i8** %30, align 8
  store i8** %11, i8*** %31, align 8
  store i8* %12, i8** %32, align 8
  store i8* %13, i8** %33, align 8
  store i8** %14, i8*** %34, align 8
  store i8* %15, i8** %35, align 8
  store i32 %16, i32* %36, align 4
  store i8* %17, i8** %37, align 8
  store i8* %18, i8** %38, align 8
  %40 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %20, align 8
  %41 = call %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy* %40)
  store %struct.fcpio_host_req* %41, %struct.fcpio_host_req** %39, align 8
  %42 = load i32, i32* @FCPIO_ICMND_16, align 4
  %43 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %44 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %47 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %50 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** %21, align 8
  %53 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %54 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8* %52, i8** %57, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %60 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 18
  store i8* %58, i8** %62, align 8
  %63 = load i8*, i8** %23, align 8
  %64 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %65 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 17
  store i8* %63, i8** %67, align 8
  %68 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %69 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 16
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %75 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 16
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %81 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 16
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 0, i64* %85, align 8
  %86 = load i8*, i8** %24, align 8
  %87 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %88 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 15
  store i8* %86, i8** %90, align 8
  %91 = load i8*, i8** %25, align 8
  %92 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %93 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 14
  store i8* %91, i8** %95, align 8
  %96 = load i8*, i8** %26, align 8
  %97 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %98 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 13
  store i8* %96, i8** %100, align 8
  %101 = load i8*, i8** %27, align 8
  %102 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %103 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 12
  store i8* %101, i8** %105, align 8
  %106 = load i8*, i8** %28, align 8
  %107 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %108 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 11
  store i8* %106, i8** %110, align 8
  %111 = load i8*, i8** %29, align 8
  %112 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %113 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 10
  store i8* %111, i8** %115, align 8
  %116 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %117 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 9
  store i64 0, i64* %119, align 8
  %120 = load i8*, i8** %30, align 8
  %121 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %122 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 8
  store i8* %120, i8** %124, align 8
  %125 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %126 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CDB_16, align 4
  %131 = call i32 @memset(i32 %129, i32 0, i32 %130)
  %132 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %133 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load i8**, i8*** %31, align 8
  %138 = load i8*, i8** %32, align 8
  %139 = call i32 @memcpy(i32 %136, i8** %137, i8* %138)
  %140 = load i8*, i8** %33, align 8
  %141 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %142 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  store i8* %140, i8** %144, align 8
  %145 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %146 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i8**, i8*** %34, align 8
  %151 = load i8*, i8** @LUN_ADDRESS, align 8
  %152 = call i32 @memcpy(i32 %149, i8** %150, i8* %151)
  %153 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %154 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %158 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %35, align 8
  %163 = call i32 @hton24(i32 %161, i8* %162)
  %164 = load i32, i32* %36, align 4
  %165 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %166 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  store i32 %164, i32* %168, align 8
  %169 = load i8*, i8** %37, align 8
  %170 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %171 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store i8* %169, i8** %173, align 8
  %174 = load i8*, i8** %38, align 8
  %175 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %39, align 8
  %176 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  store i8* %174, i8** %178, align 8
  %179 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %20, align 8
  %180 = call i32 @vnic_wq_copy_post(%struct.vnic_wq_copy* %179)
  ret void
}

declare dso_local %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i32 @hton24(i32, i8*) #1

declare dso_local i32 @vnic_wq_copy_post(%struct.vnic_wq_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
