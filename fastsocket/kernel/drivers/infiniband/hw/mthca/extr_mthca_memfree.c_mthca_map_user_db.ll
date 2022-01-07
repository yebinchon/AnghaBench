; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_map_user_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_map_user_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.mthca_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_uar = type { i32 }
%struct.mthca_user_db_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_map_user_db(%struct.mthca_dev* %0, %struct.mthca_uar* %1, %struct.mthca_user_db_table* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_uar*, align 8
  %9 = alloca %struct.mthca_user_db_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.page*], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %7, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %8, align 8
  store %struct.mthca_user_db_table* %2, %struct.mthca_user_db_table** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %16 = call i32 @mthca_is_memfree(%struct.mthca_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %205

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %205

33:                                               ; preds = %22
  %34 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %35 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %41 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %75, label %50

50:                                               ; preds = %33
  %51 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %52 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %62 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %60, %50
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 4095
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %60, %33
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %200

78:                                               ; preds = %71
  %79 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %80 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %90 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %200

98:                                               ; preds = %78
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @PAGE_MASK, align 4
  %105 = and i32 %103, %104
  %106 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %107 = call i32 @get_user_pages(%struct.TYPE_7__* %99, i32 %102, i32 %105, i32 1, i32 1, i32 0, %struct.page** %106, i32* null)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %200

111:                                              ; preds = %98
  %112 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %113 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %120 = load %struct.page*, %struct.page** %119, align 8
  %121 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @PAGE_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = call i32 @sg_set_page(i32* %118, %struct.page* %120, i32 %121, i32 %125)
  %127 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %128 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %131 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %138 = call i32 @pci_map_sg(i32 %129, i32* %136, i32 1, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %111
  %142 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %143 = load %struct.page*, %struct.page** %142, align 8
  %144 = call i32 @put_page(%struct.page* %143)
  br label %200

145:                                              ; preds = %111
  %146 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %147 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %148 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = call i32 @sg_dma_address(i32* %153)
  %155 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %156 = load %struct.mthca_uar*, %struct.mthca_uar** %8, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %155, %struct.mthca_uar* %156, i32 %157)
  %159 = call i32 @mthca_MAP_ICM_page(%struct.mthca_dev* %146, i32 %154, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %145
  %163 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %164 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %167 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %174 = call i32 @pci_unmap_sg(i32 %165, i32* %172, i32 1, i32 %173)
  %175 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %176 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = call %struct.page* @sg_page(i32* %181)
  %183 = call i32 @put_page(%struct.page* %182)
  br label %200

184:                                              ; preds = %145
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %187 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32 %185, i32* %192, align 4
  %193 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %194 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %193, i32 0, i32 1
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %184, %162, %141, %110, %88, %75
  %201 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %202 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %201, i32 0, i32 0
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %200, %30, %18
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @pci_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mthca_MAP_ICM_page(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, %struct.mthca_uar*, i32) #1

declare dso_local i32 @pci_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
