; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_ccb_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_ccb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilo_hwinfo = type { i32*, i32 }
%struct.ccb_data = type { i64, i64, i64, %struct.ccb, %struct.ccb }
%struct.ccb = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@NR_QENTRY = common dso_local global i32 0, align 4
@ILO_START_ALIGN = common dso_local global i64 0, align 8
@ILO_CACHE_SZ = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@L2_QENTRY_SZ = common dso_local global i32 0, align 4
@FIFOHANDLESIZE = common dso_local global i32 0, align 4
@L2_DB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ilo_hwinfo*, %struct.ccb_data*, i32)* @ilo_ccb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_ccb_setup(%struct.ilo_hwinfo* %0, %struct.ccb_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ilo_hwinfo*, align 8
  %6 = alloca %struct.ccb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccb*, align 8
  %11 = alloca %struct.ccb*, align 8
  store %struct.ilo_hwinfo* %0, %struct.ilo_hwinfo** %5, align 8
  store %struct.ccb_data* %1, %struct.ccb_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %13 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %12, i32 0, i32 4
  store %struct.ccb* %13, %struct.ccb** %10, align 8
  %14 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %15 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %14, i32 0, i32 3
  store %struct.ccb* %15, %struct.ccb** %11, align 8
  %16 = load i32, i32* @NR_QENTRY, align 4
  %17 = call i64 @fifo_sz(i32 %16)
  %18 = mul i64 2, %17
  %19 = load i32, i32* @NR_QENTRY, align 4
  %20 = call i64 @desc_mem_sz(i32 %19)
  %21 = mul i64 2, %20
  %22 = add i64 %18, %21
  %23 = load i64, i64* @ILO_START_ALIGN, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @ILO_CACHE_SZ, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %28 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %30 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %33 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %36 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %35, i32 0, i32 0
  %37 = call i64 @pci_alloc_consistent(i32 %31, i64 %34, i64* %36)
  %38 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %39 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %41 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %180

47:                                               ; preds = %3
  %48 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %49 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %8, align 8
  %52 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %53 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.ccb_data*, %struct.ccb_data** %6, align 8
  %57 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memset(i8* %55, i32 0, i64 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load i64, i64* @ILO_START_ALIGN, align 8
  %63 = call i64 @roundup(i64 %61, i64 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @ILO_START_ALIGN, align 8
  %67 = call i64 @roundup(i64 %65, i64 %66)
  store i64 %67, i64* %9, align 8
  %68 = load %struct.ccb*, %struct.ccb** %10, align 8
  %69 = load i32, i32* @NR_QENTRY, align 4
  %70 = load i32, i32* @L2_QENTRY_SZ, align 4
  %71 = call i32 @ctrl_setup(%struct.ccb* %68, i32 %69, i32 %70)
  %72 = load %struct.ccb*, %struct.ccb** %11, align 8
  %73 = load i32, i32* @NR_QENTRY, align 4
  %74 = load i32, i32* @L2_QENTRY_SZ, align 4
  %75 = call i32 @ctrl_setup(%struct.ccb* %72, i32 %73, i32 %74)
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* @NR_QENTRY, align 4
  %78 = call i32 @fifo_setup(i8* %76, i32 %77)
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* @FIFOHANDLESIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load %struct.ccb*, %struct.ccb** %10, align 8
  %84 = getelementptr inbounds %struct.ccb, %struct.ccb* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* @FIFOHANDLESIZE, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = trunc i64 %89 to i32
  %91 = load %struct.ccb*, %struct.ccb** %11, align 8
  %92 = getelementptr inbounds %struct.ccb, %struct.ccb* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @NR_QENTRY, align 4
  %95 = call i64 @fifo_sz(i32 %94)
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %8, align 8
  %98 = load i32, i32* @NR_QENTRY, align 4
  %99 = call i64 @fifo_sz(i32 %98)
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %9, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load i64, i64* @ILO_CACHE_SZ, align 8
  %105 = call i64 @roundup(i64 %103, i64 %104)
  %106 = inttoptr i64 %105 to i8*
  store i8* %106, i8** %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* @ILO_CACHE_SZ, align 8
  %109 = call i64 @roundup(i64 %107, i64 %108)
  store i64 %109, i64* %9, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @NR_QENTRY, align 4
  %112 = call i32 @fifo_setup(i8* %110, i32 %111)
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* @FIFOHANDLESIZE, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load %struct.ccb*, %struct.ccb** %10, align 8
  %118 = getelementptr inbounds %struct.ccb, %struct.ccb* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i32, i32* @FIFOHANDLESIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.ccb*, %struct.ccb** %11, align 8
  %126 = getelementptr inbounds %struct.ccb, %struct.ccb* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* @NR_QENTRY, align 4
  %129 = call i64 @fifo_sz(i32 %128)
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  store i8* %131, i8** %8, align 8
  %132 = load i32, i32* @NR_QENTRY, align 4
  %133 = call i64 @fifo_sz(i32 %132)
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %9, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load %struct.ccb*, %struct.ccb** %10, align 8
  %138 = getelementptr inbounds %struct.ccb, %struct.ccb* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.ccb*, %struct.ccb** %11, align 8
  %142 = getelementptr inbounds %struct.ccb, %struct.ccb* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i64 %140, i64* %143, align 8
  %144 = load i32, i32* @NR_QENTRY, align 4
  %145 = call i64 @desc_mem_sz(i32 %144)
  %146 = load i64, i64* %9, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %9, align 8
  %148 = load i32, i32* @NR_QENTRY, align 4
  %149 = call i64 @desc_mem_sz(i32 %148)
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 %149
  store i8* %151, i8** %8, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load %struct.ccb*, %struct.ccb** %10, align 8
  %154 = getelementptr inbounds %struct.ccb, %struct.ccb* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.ccb*, %struct.ccb** %11, align 8
  %158 = getelementptr inbounds %struct.ccb, %struct.ccb* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.ccb*, %struct.ccb** %10, align 8
  %162 = getelementptr inbounds %struct.ccb, %struct.ccb* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.ccb*, %struct.ccb** %11, align 8
  %165 = getelementptr inbounds %struct.ccb, %struct.ccb* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %167 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @L2_DB_SIZE, align 4
  %171 = shl i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load %struct.ccb*, %struct.ccb** %10, align 8
  %175 = getelementptr inbounds %struct.ccb, %struct.ccb* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i32* %173, i32** %176, align 8
  %177 = load %struct.ccb*, %struct.ccb** %11, align 8
  %178 = getelementptr inbounds %struct.ccb, %struct.ccb* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %47, %44
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @fifo_sz(i32) #1

declare dso_local i64 @desc_mem_sz(i32) #1

declare dso_local i64 @pci_alloc_consistent(i32, i64, i64*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i32 @ctrl_setup(%struct.ccb*, i32, i32) #1

declare dso_local i32 @fifo_setup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
