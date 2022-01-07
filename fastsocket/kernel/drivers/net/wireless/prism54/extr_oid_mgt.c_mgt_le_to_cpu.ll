; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_oid_mgt.c_mgt_le_to_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_oid_mgt.c_mgt_le_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_buffer = type { i32, i32 }
%struct.obj_bss = type { i32, i32, i32, i32, i32 }
%struct.obj_bsslist = type { i32, i32* }
%struct.obj_frequencies = type { i32, i32* }
%struct.obj_mlme = type { i32, i32, i32 }
%struct.obj_mlmeex = type { i32, i32, i32, i32 }
%struct.obj_attachment = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgt_le_to_cpu(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obj_buffer*, align 8
  %6 = alloca %struct.obj_bss*, align 8
  %7 = alloca %struct.obj_bsslist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obj_frequencies*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.obj_mlme*, align 8
  %12 = alloca %struct.obj_mlmeex*, align 8
  %13 = alloca %struct.obj_attachment*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %215 [
    i32 128, label %15
    i32 135, label %23
    i32 137, label %40
    i32 136, label %78
    i32 134, label %106
    i32 132, label %142
    i32 131, label %166
    i32 138, label %197
    i32 129, label %214
    i32 133, label %214
    i32 139, label %214
    i32 130, label %214
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @le32_to_cpu(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %217

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.obj_buffer*
  store %struct.obj_buffer* %25, %struct.obj_buffer** %5, align 8
  %26 = load %struct.obj_buffer*, %struct.obj_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.obj_buffer*, %struct.obj_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.obj_buffer*, %struct.obj_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le32_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.obj_buffer*, %struct.obj_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %217

40:                                               ; preds = %2
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to %struct.obj_bss*
  store %struct.obj_bss* %42, %struct.obj_bss** %6, align 8
  %43 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %44 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %49 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %51 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le16_to_cpu(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %56 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %58 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le16_to_cpu(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %63 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %65 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le16_to_cpu(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %70 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %72 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.obj_bss*, %struct.obj_bss** %6, align 8
  %77 = getelementptr inbounds %struct.obj_bss, %struct.obj_bss* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %217

78:                                               ; preds = %2
  %79 = load i8*, i8** %4, align 8
  %80 = bitcast i8* %79 to %struct.obj_bsslist*
  store %struct.obj_bsslist* %80, %struct.obj_bsslist** %7, align 8
  %81 = load %struct.obj_bsslist*, %struct.obj_bsslist** %7, align 8
  %82 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @le32_to_cpu(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.obj_bsslist*, %struct.obj_bsslist** %7, align 8
  %87 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %102, %78
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.obj_bsslist*, %struct.obj_bsslist** %7, align 8
  %91 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.obj_bsslist*, %struct.obj_bsslist** %7, align 8
  %96 = getelementptr inbounds %struct.obj_bsslist, %struct.obj_bsslist* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = bitcast i32* %100 to i8*
  call void @mgt_le_to_cpu(i32 137, i8* %101)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %88

105:                                              ; preds = %88
  br label %217

106:                                              ; preds = %2
  %107 = load i8*, i8** %4, align 8
  %108 = bitcast i8* %107 to %struct.obj_frequencies*
  store %struct.obj_frequencies* %108, %struct.obj_frequencies** %9, align 8
  %109 = load %struct.obj_frequencies*, %struct.obj_frequencies** %9, align 8
  %110 = getelementptr inbounds %struct.obj_frequencies, %struct.obj_frequencies* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @le16_to_cpu(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.obj_frequencies*, %struct.obj_frequencies** %9, align 8
  %115 = getelementptr inbounds %struct.obj_frequencies, %struct.obj_frequencies* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %138, %106
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.obj_frequencies*, %struct.obj_frequencies** %9, align 8
  %119 = getelementptr inbounds %struct.obj_frequencies, %struct.obj_frequencies* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load %struct.obj_frequencies*, %struct.obj_frequencies** %9, align 8
  %124 = getelementptr inbounds %struct.obj_frequencies, %struct.obj_frequencies* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le16_to_cpu(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.obj_frequencies*, %struct.obj_frequencies** %9, align 8
  %133 = getelementptr inbounds %struct.obj_frequencies, %struct.obj_frequencies* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %122
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %116

141:                                              ; preds = %116
  br label %217

142:                                              ; preds = %2
  %143 = load i8*, i8** %4, align 8
  %144 = bitcast i8* %143 to %struct.obj_mlme*
  store %struct.obj_mlme* %144, %struct.obj_mlme** %11, align 8
  %145 = load %struct.obj_mlme*, %struct.obj_mlme** %11, align 8
  %146 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @le16_to_cpu(i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.obj_mlme*, %struct.obj_mlme** %11, align 8
  %151 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.obj_mlme*, %struct.obj_mlme** %11, align 8
  %153 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16_to_cpu(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.obj_mlme*, %struct.obj_mlme** %11, align 8
  %158 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.obj_mlme*, %struct.obj_mlme** %11, align 8
  %160 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @le16_to_cpu(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.obj_mlme*, %struct.obj_mlme** %11, align 8
  %165 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  br label %217

166:                                              ; preds = %2
  %167 = load i8*, i8** %4, align 8
  %168 = bitcast i8* %167 to %struct.obj_mlmeex*
  store %struct.obj_mlmeex* %168, %struct.obj_mlmeex** %12, align 8
  %169 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %170 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @le16_to_cpu(i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %175 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %177 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @le16_to_cpu(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %182 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %184 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @le16_to_cpu(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %189 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %191 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @le16_to_cpu(i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.obj_mlmeex*, %struct.obj_mlmeex** %12, align 8
  %196 = getelementptr inbounds %struct.obj_mlmeex, %struct.obj_mlmeex* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  br label %217

197:                                              ; preds = %2
  %198 = load i8*, i8** %4, align 8
  %199 = bitcast i8* %198 to %struct.obj_attachment*
  store %struct.obj_attachment* %199, %struct.obj_attachment** %13, align 8
  %200 = load %struct.obj_attachment*, %struct.obj_attachment** %13, align 8
  %201 = getelementptr inbounds %struct.obj_attachment, %struct.obj_attachment* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @le16_to_cpu(i32 %202)
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.obj_attachment*, %struct.obj_attachment** %13, align 8
  %206 = getelementptr inbounds %struct.obj_attachment, %struct.obj_attachment* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.obj_attachment*, %struct.obj_attachment** %13, align 8
  %208 = getelementptr inbounds %struct.obj_attachment, %struct.obj_attachment* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @le16_to_cpu(i32 %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.obj_attachment*, %struct.obj_attachment** %13, align 8
  %213 = getelementptr inbounds %struct.obj_attachment, %struct.obj_attachment* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %217

214:                                              ; preds = %2, %2, %2, %2
  br label %217

215:                                              ; preds = %2
  %216 = call i32 (...) @BUG()
  br label %217

217:                                              ; preds = %215, %214, %197, %166, %142, %141, %105, %40, %23, %15
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
