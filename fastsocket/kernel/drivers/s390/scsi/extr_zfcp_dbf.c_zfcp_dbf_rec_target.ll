; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_rec_record }
%struct.zfcp_dbf_rec_record = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i8*, i32, i8*, i8* }

@ZFCP_REC_DBF_ID_TARGET = common dso_local global i32 0, align 4
@ZFCP_DBF_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.zfcp_dbf*, i32*, i32*, i8*, i32, i8*)* @zfcp_dbf_rec_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_rec_target(i8* %0, i8* %1, %struct.zfcp_dbf* %2, i32* %3, i32* %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.zfcp_dbf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.zfcp_dbf_rec_record*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.zfcp_dbf* %2, %struct.zfcp_dbf** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %19 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %20 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %19, i32 0, i32 2
  store %struct.zfcp_dbf_rec_record* %20, %struct.zfcp_dbf_rec_record** %17, align 8
  %21 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %22 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %21, i32 0, i32 0
  %23 = load i64, i64* %18, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %26 = call i32 @memset(%struct.zfcp_dbf_rec_record* %25, i32 0, i32 56)
  %27 = load i32, i32* @ZFCP_REC_DBF_ID_TARGET, align 4
  %28 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %29 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @ZFCP_DBF_ID_SIZE, align 4
  %35 = call i32 @memcpy(i32 %32, i8* %33, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %39 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i8* @atomic_read(i32* %42)
  %44 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %45 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %50 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %55 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i8* %58, i8** %62, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i8* @atomic_read(i32* %63)
  %65 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %66 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i8* %64, i8** %68, align 8
  %69 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %70 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %17, align 8
  %73 = call i32 @debug_event(i32 %71, i32 3, %struct.zfcp_dbf_rec_record* %72, i32 56)
  %74 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %75 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %74, i32 0, i32 0
  %76 = load i64, i64* %18, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_rec_record*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_rec_record*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
