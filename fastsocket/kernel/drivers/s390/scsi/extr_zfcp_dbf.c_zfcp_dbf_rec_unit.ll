; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32, i32, i32, %struct.zfcp_port* }
%struct.zfcp_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_rec_unit(i8* %0, i8* %1, %struct.zfcp_unit* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca %struct.zfcp_port*, align 8
  %8 = alloca %struct.zfcp_dbf*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.zfcp_unit* %2, %struct.zfcp_unit** %6, align 8
  %9 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %10 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %9, i32 0, i32 3
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %11, %struct.zfcp_port** %7, align 8
  %12 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %13 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %15, align 8
  store %struct.zfcp_dbf* %16, %struct.zfcp_dbf** %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %20 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %21 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %20, i32 0, i32 2
  %22 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %23 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %22, i32 0, i32 1
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %25 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %28 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %31 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @zfcp_dbf_rec_target(i8* %17, i8* %18, %struct.zfcp_dbf* %19, i32* %21, i32* %23, i32 %26, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @zfcp_dbf_rec_target(i8*, i8*, %struct.zfcp_dbf*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
