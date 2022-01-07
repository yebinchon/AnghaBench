; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_cplbinfo.c_cplbinfo_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_cplbinfo.c_cplbinfo_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file*, %struct.TYPE_4__ }
%struct.seq_file = type { %struct.cplbinfo_data* }
%struct.cplbinfo_data = type { i8, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.proc_dir_entry = type { i64 }

@CPLBINFO_DCPLB_FLAG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cplbinfo_sops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cplbinfo_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cplbinfo_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.seq_file*, align 8
  %11 = alloca %struct.cplbinfo_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.proc_dir_entry* @PDE(i32 %17)
  store %struct.proc_dir_entry* %18, %struct.proc_dir_entry** %6, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %20 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CPLBINFO_DCPLB_FLAG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 68, i32 73
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  %30 = load i32, i32* @CPLBINFO_DCPLB_FLAG, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cpu_online(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %2
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = call i32 @seq_open_private(%struct.file* %41, i32* @cplbinfo_sops, i32 16)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %40
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load %struct.seq_file*, %struct.seq_file** %49, align 8
  store %struct.seq_file* %50, %struct.seq_file** %10, align 8
  %51 = load %struct.seq_file*, %struct.seq_file** %10, align 8
  %52 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %51, i32 0, i32 0
  %53 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %52, align 8
  store %struct.cplbinfo_data* %53, %struct.cplbinfo_data** %11, align 8
  %54 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %11, align 8
  %55 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i8, i8* %7, align 1
  %57 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %11, align 8
  %58 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %57, i32 0, i32 0
  store i8 %56, i8* %58, align 8
  %59 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @cplbinfo_seq_init(%struct.cplbinfo_data* %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %47, %45, %37
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.proc_dir_entry* @PDE(i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @seq_open_private(%struct.file*, i32*, i32) #1

declare dso_local i32 @cplbinfo_seq_init(%struct.cplbinfo_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
