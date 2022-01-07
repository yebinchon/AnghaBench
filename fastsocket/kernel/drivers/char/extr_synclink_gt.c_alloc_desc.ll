; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.slgt_desc*, %struct.slgt_desc*, i64, i32*, i32 }
%struct.slgt_desc = type { i32, i8* }

@DESC_LIST_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMABUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_desc(%struct.slgt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DESC_LIST_SIZE, align 4
  %10 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 4
  %12 = call i32* @pci_alloc_consistent(i32 %8, i32 %9, i64* %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 5
  store i32* %12, i32** %14, align 8
  %15 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %196

22:                                               ; preds = %1
  %23 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @DESC_LIST_SIZE, align 4
  %27 = call i32 @memset(i32* %25, i32 0, i32 %26)
  %28 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %29 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to %struct.slgt_desc*
  %32 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 3
  store %struct.slgt_desc* %31, %struct.slgt_desc** %33, align 8
  %34 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %35 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to %struct.slgt_desc*
  %38 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %37, i64 %41
  %43 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 2
  store %struct.slgt_desc* %42, %struct.slgt_desc** %44, align 8
  %45 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %117, %22
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %120

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = mul i64 %59, 16
  %61 = add i64 %57, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %64 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %63, i32 0, i32 3
  %65 = load %struct.slgt_desc*, %struct.slgt_desc** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %65, i64 %67
  %69 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %72 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %55
  %77 = load i32, i32* %5, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %80 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %79, i32 0, i32 3
  %81 = load %struct.slgt_desc*, %struct.slgt_desc** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %81, i64 %83
  %85 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %84, i32 0, i32 1
  store i8* %78, i8** %85, align 8
  br label %103

86:                                               ; preds = %55
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = mul i64 %91, 16
  %93 = add i64 %88, %92
  %94 = trunc i64 %93 to i32
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %97 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %96, i32 0, i32 3
  %98 = load %struct.slgt_desc*, %struct.slgt_desc** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %98, i64 %100
  %102 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %101, i32 0, i32 1
  store i8* %95, i8** %102, align 8
  br label %103

103:                                              ; preds = %86, %76
  %104 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %105 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %104, i32 0, i32 3
  %106 = load %struct.slgt_desc*, %struct.slgt_desc** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %106, i64 %108
  %110 = load i32, i32* @DMABUFSIZE, align 4
  %111 = bitcast %struct.slgt_desc* %109 to { i32, i8* }*
  %112 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %111, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @set_desc_count(i32 %113, i8* %115, i32 %110)
  br label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %4, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %49

120:                                              ; preds = %49
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %192, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %124 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %195

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %131 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = add i32 %132, %133
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, 16
  %137 = add i64 %129, %136
  %138 = trunc i64 %137 to i32
  %139 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %140 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %139, i32 0, i32 2
  %141 = load %struct.slgt_desc*, %struct.slgt_desc** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %141, i64 %143
  %145 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %148 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %149, 1
  %151 = icmp eq i32 %146, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %127
  %153 = load i32, i32* %5, align 4
  %154 = zext i32 %153 to i64
  %155 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %156 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 16
  %160 = add i64 %154, %159
  %161 = trunc i64 %160 to i32
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %164 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %163, i32 0, i32 2
  %165 = load %struct.slgt_desc*, %struct.slgt_desc** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %165, i64 %167
  %169 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %168, i32 0, i32 1
  store i8* %162, i8** %169, align 8
  br label %191

170:                                              ; preds = %127
  %171 = load i32, i32* %5, align 4
  %172 = zext i32 %171 to i64
  %173 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %174 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %175, %176
  %178 = add i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = mul i64 %179, 16
  %181 = add i64 %172, %180
  %182 = trunc i64 %181 to i32
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %185 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %184, i32 0, i32 2
  %186 = load %struct.slgt_desc*, %struct.slgt_desc** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %186, i64 %188
  %190 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %189, i32 0, i32 1
  store i8* %183, i8** %190, align 8
  br label %191

191:                                              ; preds = %170, %152
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %4, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %121

195:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %19
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @set_desc_count(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
