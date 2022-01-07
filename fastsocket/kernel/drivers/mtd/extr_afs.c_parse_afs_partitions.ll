; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_afs.c_parse_afs_partitions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_afs.c_parse_afs_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.mtd_partition = type { i8*, i32, i64, i64 }
%struct.image_info_struct = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"  mtd%d: at 0x%08x, %5lluKiB, %8u, %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, i64)* @parse_afs_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_afs_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.image_info_struct, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.image_info_struct, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %66, %3
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @afs_read_footer(%struct.mtd_info* %32, i64* %17, i64* %16, i64 %33, i64 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %72

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %66

43:                                               ; preds = %39
  %44 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @afs_read_iis(%struct.mtd_info* %44, %struct.image_info_struct* %15, i64 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %72

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %66

54:                                               ; preds = %50
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 32
  store i64 %56, i64* %12, align 8
  %57 = getelementptr inbounds %struct.image_info_struct, %struct.image_info_struct* %15, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strlen(i32 %58)
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %54, %53, %42
  %67 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %25

72:                                               ; preds = %49, %38, %25
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %204

77:                                               ; preds = %72
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.mtd_partition* @kzalloc(i64 %78, i32 %79)
  store %struct.mtd_partition* %80, %struct.mtd_partition** %8, align 8
  %81 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %82 = icmp ne %struct.mtd_partition* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %204

86:                                               ; preds = %77
  %87 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %87, i64 %88
  %90 = bitcast %struct.mtd_partition* %89 to i8*
  store i8* %90, i8** %14, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %91

91:                                               ; preds = %179, %86
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %94 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %185

97:                                               ; preds = %91
  %98 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @afs_read_footer(%struct.mtd_info* %98, i64* %20, i64* %19, i64 %99, i64 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %185

105:                                              ; preds = %97
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %179

109:                                              ; preds = %105
  %110 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %111 = load i64, i64* %19, align 8
  %112 = call i32 @afs_read_iis(%struct.mtd_info* %110, %struct.image_info_struct* %18, i64 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %185

116:                                              ; preds = %109
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %179

120:                                              ; preds = %116
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds %struct.image_info_struct, %struct.image_info_struct* %18, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strcpy(i8* %121, i32 %123)
  %125 = load i8*, i8** %14, align 8
  %126 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %126, i64 %127
  %129 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %128, i32 0, i32 0
  store i8* %125, i8** %129, align 8
  %130 = getelementptr inbounds %struct.image_info_struct, %struct.image_info_struct* %18, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %134 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = sub nsw i64 %136, 1
  %138 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %139 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, 1
  %142 = xor i64 %141, -1
  %143 = and i64 %137, %142
  %144 = trunc i64 %143 to i32
  %145 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %145, i64 %146
  %148 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 8
  %149 = load i64, i64* %20, align 8
  %150 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %150, i64 %151
  %153 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %152, i32 0, i32 3
  store i64 %149, i64* %153, align 8
  %154 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %154, i64 %155
  %157 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %160, i64 %161
  %163 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sdiv i32 %164, 1024
  %166 = getelementptr inbounds %struct.image_info_struct, %struct.image_info_struct* %18, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %158, i64 %159, i32 %165, i32 %167, i8* %168)
  %170 = load i64, i64* %11, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %11, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = getelementptr inbounds %struct.image_info_struct, %struct.image_info_struct* %18, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @strlen(i32 %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %178, i8** %14, align 8
  br label %179

179:                                              ; preds = %120, %119, %108
  %180 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %181 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %10, align 8
  br label %91

185:                                              ; preds = %115, %104, %91
  %186 = load i64, i64* %11, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %190 = call i32 @kfree(%struct.mtd_partition* %189)
  store %struct.mtd_partition* null, %struct.mtd_partition** %8, align 8
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %193 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %192, %struct.mtd_partition** %193, align 8
  %194 = load i64, i64* %11, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i64, i64* %11, align 8
  br label %201

198:                                              ; preds = %191
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  br label %201

201:                                              ; preds = %198, %196
  %202 = phi i64 [ %197, %196 ], [ %200, %198 ]
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %201, %83, %75
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @afs_read_footer(%struct.mtd_info*, i64*, i64*, i64, i64) #1

declare dso_local i32 @afs_read_iis(%struct.mtd_info*, %struct.image_info_struct*, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.mtd_partition* @kzalloc(i64, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @printk(i8*, i64, i64, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.mtd_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
