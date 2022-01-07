; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_raid_phys_disk_pg1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_raid_phys_disk_pg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }

@MPI_RAIDPHYSDISKPAGE1_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_RAID_PHYSDISK = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_raid_phys_disk_pg1(%struct.TYPE_21__* %0, i8* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  %14 = call i32 @memset(%struct.TYPE_22__* %7, i32 0, i32 48)
  %15 = call i32 @memset(%struct.TYPE_22__* %8, i32 0, i32 48)
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @MPI_RAIDPHYSDISKPAGE1_PAGEVERSION, align 4
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 7
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, align 4
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i64 @mpt_config(%struct.TYPE_21__* %26, %struct.TYPE_22__* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %182

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %182

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 4
  %46 = call %struct.TYPE_19__* @pci_alloc_consistent(i32 %42, i32 %45, i32* %9)
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %10, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = icmp ne %struct.TYPE_19__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %182

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 3
  store i8* %57, i8** %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = call i64 @mpt_config(%struct.TYPE_21__* %59, %struct.TYPE_22__* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %182

65:                                               ; preds = %52
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %178, %65
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %181

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 5
  store i32 %88, i32* %95, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 4
  store i32 %103, i32* %110, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  store i32 %118, i32* %125, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  store i32 %134, i32* %141, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = call i32 @memcpy(i32* %13, i32* %148, i32 4)
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @le64_to_cpu(i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = call i32 @memcpy(i32* %158, i32* %13, i32 4)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = call i32 @memcpy(i32* %13, i32* %166, i32 4)
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @le64_to_cpu(i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = call i32 @memcpy(i32* %176, i32* %13, i32 4)
  br label %178

178:                                              ; preds = %80
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %74

181:                                              ; preds = %74
  br label %182

182:                                              ; preds = %181, %62, %49, %36, %29
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %184 = icmp ne %struct.TYPE_19__* %183, null
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %190, 4
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @pci_free_consistent(i32 %188, i32 %191, %struct.TYPE_19__* %192, i32 %193)
  br label %195

195:                                              ; preds = %185, %182
  %196 = load i32, i32* %11, align 4
  ret i32 %196
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @mpt_config(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
