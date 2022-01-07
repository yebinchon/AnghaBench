; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_san_record }
%struct.zfcp_dbf_san_record = type { %struct.TYPE_4__, i8*, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@ZFCP_DBF_SAN_MAX_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.zfcp_fsf_req*, i8*, i8*, i32, i8*, i32)* @zfcp_dbf_san_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_san_els(i8* %0, i32 %1, %struct.zfcp_fsf_req* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zfcp_fsf_req*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.zfcp_adapter*, align 8
  %18 = alloca %struct.zfcp_dbf*, align 8
  %19 = alloca %struct.zfcp_dbf_san_record*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.zfcp_fsf_req* %2, %struct.zfcp_fsf_req** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 2
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %22, align 8
  store %struct.zfcp_adapter* %23, %struct.zfcp_adapter** %17, align 8
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %17, align 8
  %25 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %24, i32 0, i32 0
  %26 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %25, align 8
  store %struct.zfcp_dbf* %26, %struct.zfcp_dbf** %18, align 8
  %27 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %18, align 8
  %28 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %27, i32 0, i32 2
  store %struct.zfcp_dbf_san_record* %28, %struct.zfcp_dbf_san_record** %19, align 8
  %29 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %18, align 8
  %30 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %29, i32 0, i32 0
  %31 = load i64, i64* %20, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %34 = call i32 @memset(%struct.zfcp_dbf_san_record* %33, i32 0, i32 40)
  %35 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %36 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %40 = call i32 @strncpy(i32 %37, i8* %38, i32 %39)
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %42 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %45 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %50 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %53 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %56 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %59 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %18, align 8
  %63 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %67 = call i32 @debug_event(i32 %64, i32 %65, %struct.zfcp_dbf_san_record* %66, i32 40)
  %68 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %18, align 8
  %69 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %19, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @ZFCP_DBF_SAN_MAX_PAYLOAD, align 4
  %76 = call i32 @min(i32 %74, i32 %75)
  %77 = call i32 @zfcp_dbf_hexdump(i32 %70, %struct.zfcp_dbf_san_record* %71, i32 40, i32 %72, i8* %73, i32 %76)
  %78 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %18, align 8
  %79 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %78, i32 0, i32 0
  %80 = load i64, i64* %20, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_san_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_san_record*, i32) #1

declare dso_local i32 @zfcp_dbf_hexdump(i32, %struct.zfcp_dbf_san_record*, i32, i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
