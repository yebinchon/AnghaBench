; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_rec_record }
%struct.zfcp_dbf_rec_record = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i8*, i32, i8*, i8*, i8*, i8* }
%struct.zfcp_port = type { i32, i32 }
%struct.zfcp_unit = type { i32, i32 }

@ZFCP_REC_DBF_ID_TRIGGER = common dso_local global i32 0, align 4
@ZFCP_DBF_ID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_rec_trigger(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.zfcp_adapter* %5, %struct.zfcp_port* %6, %struct.zfcp_unit* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.zfcp_adapter*, align 8
  %15 = alloca %struct.zfcp_port*, align 8
  %16 = alloca %struct.zfcp_unit*, align 8
  %17 = alloca %struct.zfcp_dbf*, align 8
  %18 = alloca %struct.zfcp_dbf_rec_record*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.zfcp_adapter* %5, %struct.zfcp_adapter** %14, align 8
  store %struct.zfcp_port* %6, %struct.zfcp_port** %15, align 8
  store %struct.zfcp_unit* %7, %struct.zfcp_unit** %16, align 8
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 1
  %22 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %21, align 8
  store %struct.zfcp_dbf* %22, %struct.zfcp_dbf** %17, align 8
  %23 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %17, align 8
  %24 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %23, i32 0, i32 2
  store %struct.zfcp_dbf_rec_record* %24, %struct.zfcp_dbf_rec_record** %18, align 8
  %25 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %17, align 8
  %26 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %25, i32 0, i32 0
  %27 = load i64, i64* %19, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %30 = call i32 @memset(%struct.zfcp_dbf_rec_record* %29, i32 0, i32 80)
  %31 = load i32, i32* @ZFCP_REC_DBF_ID_TRIGGER, align 4
  %32 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %35 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @ZFCP_DBF_ID_SIZE, align 4
  %39 = call i32 @memcpy(i32 %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %43 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %48 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i8* %46, i8** %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %53 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %59 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i64 %57, i64* %61, align 8
  %62 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  %63 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %62, i32 0, i32 0
  %64 = call i8* @atomic_read(i32* %63)
  %65 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %66 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  store i8* %64, i8** %68, align 8
  %69 = load %struct.zfcp_port*, %struct.zfcp_port** %15, align 8
  %70 = icmp ne %struct.zfcp_port* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %8
  %72 = load %struct.zfcp_port*, %struct.zfcp_port** %15, align 8
  %73 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %72, i32 0, i32 1
  %74 = call i8* @atomic_read(i32* %73)
  %75 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %76 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  store i8* %74, i8** %78, align 8
  %79 = load %struct.zfcp_port*, %struct.zfcp_port** %15, align 8
  %80 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %83 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i32 %81, i32* %85, align 8
  br label %86

86:                                               ; preds = %71, %8
  %87 = load %struct.zfcp_unit*, %struct.zfcp_unit** %16, align 8
  %88 = icmp ne %struct.zfcp_unit* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load %struct.zfcp_unit*, %struct.zfcp_unit** %16, align 8
  %91 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %90, i32 0, i32 1
  %92 = call i8* @atomic_read(i32* %91)
  %93 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %94 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i8* %92, i8** %96, align 8
  %97 = load %struct.zfcp_unit*, %struct.zfcp_unit** %16, align 8
  %98 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %101 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 8
  br label %104

104:                                              ; preds = %89, %86
  %105 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %17, align 8
  %106 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = icmp ne i8* %108, null
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 4
  %112 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %18, align 8
  %113 = call i32 @debug_event(i32 %107, i32 %111, %struct.zfcp_dbf_rec_record* %112, i32 80)
  %114 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %17, align 8
  %115 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %114, i32 0, i32 0
  %116 = load i64, i64* %19, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
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
